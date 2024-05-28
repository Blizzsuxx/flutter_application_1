import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Store with ChangeNotifier {
  static const String _baseUrl = 'http://data.fixer.io/api/latest';
  static const String _accessKey = '6b1d4212f150a4236276e4c28fa188aa';
  static const String _url = '$_baseUrl?access_key=$_accessKey';

  Map<String, dynamic> _exchangeRates = {};
  bool _isLoading = false;
  late SharedPreferences? _prefs;

  Map<String, dynamic> get exchangeRates => _exchangeRates;
  bool get isLoading => _isLoading;
  Set<String> favourites = {};

  Store() {
    initSharedPreferences();
    initExchangeRates();
  }

  void initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    favourites = _prefs?.getStringList('favourites')?.toSet() ?? {};
    notifyListeners();
  }

  Future<void> initExchangeRates() async {
    _isLoading = true;
    notifyListeners();

    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _exchangeRates = data['rates'];
    } else {
      throw Exception('Failed to fetch exchange rates');
    }

    _isLoading = false;
    notifyListeners();
  }

  num convertCurrency(String from, String to, num amount) {
    final num fromRate = _exchangeRates[from];
    final num toRate = _exchangeRates[to];

    final num result = amount * (toRate / fromRate);
    // Round to 4 decimal places
    return num.parse(result.toStringAsFixed(4));
  }

  void addOrRemoveFavourite(String currency) {
    if (favourites.contains(currency)) {
      favourites.remove(currency);
    } else {
      favourites.add(currency);
    }
    _prefs?.setStringList('favourites', favourites.toList());
    notifyListeners();
  }
}

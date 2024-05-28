import 'package:flutter_application_1/constants/countriesAndCurrencies.dart';

class CurrencyModel {
  CurrencyModel({
    required this.currency,
    required this.symbol,
    required this.flag,
  });

  final String currency;
  final String symbol;
  final String flag;

  factory CurrencyModel.fromCurrency(String currency) {
    return CurrencyModel(
      currency: currency,
      symbol: currencies[currency]['symbol'],
      flag: 'assets/icons/flags_svg/${currencies[currency]['flag']}',
    );
  }

  static List<CurrencyModel> generateAvailableCurrencies() {
    return currencies.keys
        .map((String currency) => CurrencyModel.fromCurrency(currency))
        .toList();
  }
}

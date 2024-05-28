import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_application_1/elements/currencyWidget.dart';
import 'package:flutter_application_1/models/currencyModel.dart';
import 'package:flutter_application_1/providers/store.dart';
import 'package:provider/provider.dart';

class CurrencyConverter extends StatefulWidget {
  // Currency converter page
  // Contains two currency widgets and a swap button
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final List<CurrencyModel> currencyList =
      CurrencyModel.generateAvailableCurrencies();
  TextEditingController amountController1 = TextEditingController();
  TextEditingController amountController2 = TextEditingController();
  CurrencyModel selectedCurrency1 = CurrencyModel.fromCurrency("USD");
  CurrencyModel selectedCurrency2 = CurrencyModel.fromCurrency("EUR");

  @override
  Widget build(BuildContext context) {
    // gets and listens to the store provider
    final Store fixer = Provider.of<Store>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
      ),
      body: Container(
        color: Colors.lightBlue[100],
        child: fixer.isLoading
            ? const Center(
                child: CircularProgressIndicator()) // show loading spinner
            : _buildBody(fixer),
      ),
    );
  }

  Column _buildBody(Store fixer) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CurrencyWidget(
          currencyList: currencyList,
          selectedCurrency: selectedCurrency1,
          onCurrencyChanged: currencyChanged1,
          onAmountChanged: calculateCurrencies1,
          onFavouriteChanged: favouriteChanged,
          amountController: amountController1,
          favourites: fixer.favourites,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Transform.rotate(
            angle: 90 * math.pi / 180,
            child: IconButton(
                onPressed: swapCurrencies,
                icon: const Icon(Icons.compare_arrows)),
          ),
        ),
        CurrencyWidget(
          currencyList: currencyList,
          selectedCurrency: selectedCurrency2,
          onCurrencyChanged: currencyChanged2,
          onAmountChanged: calculateCurrencies2,
          onFavouriteChanged: favouriteChanged,
          amountController: amountController2,
          favourites: fixer.favourites,
        ),
      ],
    );
  }

  void swapCurrencies() {
    // swap the selected currencies
    setState(() {
      final CurrencyModel tempCurrency = selectedCurrency1;
      selectedCurrency1 = selectedCurrency2;
      selectedCurrency2 = tempCurrency;
    });
    final num amount = double.tryParse(amountController1.text) ?? 0;
    calculateCurrencies1(amount);
  }

  void calculateCurrencies1(num amount) {
    // calculate the amount for the first currency
    final Store fixer = Provider.of<Store>(context, listen: false);
    setState(() {
      amountController2.text = fixer
          .convertCurrency(
              selectedCurrency1.currency, selectedCurrency2.currency, amount)
          .toString();
    });
  }

  void calculateCurrencies2(num amount) {
    // calculate the amount for the second currency
    final Store fixer = Provider.of<Store>(context, listen: false);
    setState(() {
      amountController1.text = fixer
          .convertCurrency(
              selectedCurrency2.currency, selectedCurrency1.currency, amount)
          .toString();
    });
  }

  void currencyChanged1(CurrencyModel value) {
    // change the first currency
    setState(() {
      selectedCurrency1 = value;
      final num amount = double.tryParse(amountController1.text) ?? 0;
      calculateCurrencies1(amount);
    });
  }

  void currencyChanged2(CurrencyModel value) {
    // change the second currency
    setState(() {
      selectedCurrency2 = value;
      final num amount = double.tryParse(amountController2.text) ?? 0;
      calculateCurrencies2(amount);
    });
  }

  void favouriteChanged(CurrencyModel currency) {
    // add or remove a currency from the favourites
    final Store fixer = Provider.of<Store>(context, listen: false);
    fixer.addOrRemoveFavourite(currency.currency);
  }
}

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/countriesAndCurrencies.dart';
import 'package:flutter_application_1/models/currencyModel.dart';
import 'package:flutter_svg/svg.dart';

// reusable widget for currency selection
// enables user to select a currency from a dropdown list and enter an amount to convert
// emits events when currency or amount changes, and when a currency is added or removed from favourites
class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget(
      {super.key,
      required this.currencyList,
      required this.selectedCurrency,
      required this.onAmountChanged,
      required this.onCurrencyChanged,
      required this.amountController,
      required this.onFavouriteChanged,
      required this.favourites});

  final List<CurrencyModel> currencyList;
  final CurrencyModel selectedCurrency;
  final ValueChanged<double> onAmountChanged;
  final ValueChanged<CurrencyModel> onCurrencyChanged;
  final ValueChanged<CurrencyModel> onFavouriteChanged;
  final TextEditingController amountController;
  final Set<String> favourites;

  @override
  Widget build(BuildContext context) {
    final String symbol = currencies[selectedCurrency.currency]['symbol'] ?? '';
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: DropdownSearch<CurrencyModel>(
              dropdownDecoratorProps: const DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              dropdownBuilder: buildDropdown,
              popupProps: PopupProps.menu(
                  showSearchBox: true,
                  itemBuilder: buildItem,
                  favoriteItemProps: FavoriteItemProps(
                      showFavoriteItems: true,
                      favoriteItems: filterFavouriteCurrencies),
                  searchFieldProps: const TextFieldProps(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  )),
              selectedItem: selectedCurrency,
              items: currencyList,
              onChanged: (CurrencyModel? value) {
                onCurrencyChanged(value!);
              },
              itemAsString: (CurrencyModel? item) => item!.currency,
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
            ),
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: amountController.text,
                prefixIcon: Text(symbol),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.left,
              onChanged: (String value) {
                onAmountChanged(double.tryParse(value) ?? 0.0);
              },
              controller: amountController,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(BuildContext context, CurrencyModel item, bool isSelected) {
    // defines how each currency is displayed in the dropdown
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SvgPicture.asset(
            item.flag,
            width: 50,
          ),
          const SizedBox(width: 10.0),
          Text(item.currency),
        ],
      ),
    );
  }

  Widget buildDropdown(BuildContext context, CurrencyModel? data) {
    // defines how the selected currency is displayed in the dropdown
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          IconButton(
              onPressed: addToFavourites,
              icon: const Icon(Icons.star),
              color: favourites.contains(selectedCurrency.currency)
                  ? Colors.amber
                  : Colors.grey),
          const SizedBox(width: 10.0),
          SvgPicture.asset(
            selectedCurrency.flag,
            width: 50,
          ),
          const SizedBox(width: 10.0),
          Text(selectedCurrency.currency),
        ],
      ),
    );
  }

  List<CurrencyModel> filterFavouriteCurrencies(List<CurrencyModel> items) {
    // filters the list of currencies to only show the favourites
    return items.where((CurrencyModel item) {
      return favourites.contains(item.currency);
    }).toList();
  }

  void addToFavourites() {
    // adds or removes the selected currency from the favourites
    onFavouriteChanged(selectedCurrency);
  }
}

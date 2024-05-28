# flutter currency conversion app

Google Pixel 3a was used as "target hardware" during development

## Dependencies
flutter_svg - used for displaying flags
provider - used mainly as a sort of a Fixer api wrapper and state management (fetching currency rates on startup and reading/writing favourite currencies)
http - for communicating with fixer
dropdown_search - used for listing all currencies, filtering, and displaying favourites
shared_preferences - used for saving favourite currencies locally

## Design choices
used Providers as you would use a normal store in other frontend frameworks
CurrencyWidgets are stateless and pass the data to parent component which is the CurrencyConverter page - this seems like a lesser of  two evils as having a stateful child and reading data directly from such children in the parent seems like a bad idea / code is ugly, however neither this approach is the prettiest (amount1/2, etc)

### Assets
stores SVG pictures of countries, used for displaying appropriate country flag next to the currencies selected

### Scripts
contains helper scripts used during development

### Constants
contains constants, in particular a currency to country mapper - solutions provided in form of already existing packages either had next to no "watchers" - deeming them unsafe, or provided too much overhead, so decided to just map the data provided from https://github.com/Lissy93/currency-flags/tree/master

### Elements
contains reusable components, notably CurrencyWidget - stateless widget for displaying/choosing currencies, emits onAmountChanged, onCurrencyChanged and onFavouriteChanged events

### Pages
contains the home page CurrencyConverter - stateful widget that stores relevant page data such as selected currencies, amounts, etc. listens to events from CurrencyWidgets and communicates with provider

### Providers
contains Provider/Store, used as a Fixer api wrapper, contains data that's important throughout the whole app (rates and favourites)

### Models
contains CurrencyModel - currency, symbol and flag path

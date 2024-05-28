const Map<String, dynamic> currencies = {
  "AED": {
    "flag": "aed.svg",
    "symbol": "\u062f.\u0625",
    "name": "Arabic dirham"
  },
  "AFN": {"flag": "afn.svg", "symbol": "\u060b", "name": "Afghan afghani"},
  "AMD": {"flag": "amd.svg", "symbol": "\u058f", "name": "Armenian dram"},
  "ANG": {
    "flag": "ang.svg",
    "symbol": "NA\u0192",
    "name": "Netherlands Antillean guilder"
  },
  "AOA": {"flag": "aoa.svg", "symbol": "Kz", "name": "Angolan kwanza"},
  "ARS": {"flag": "ars.svg", "symbol": "\$", "name": "Argentine peso"},
  "AUD": {"flag": "aud.svg", "symbol": "\$", "name": "Australian dollar"},
  "AWG": {"flag": "awg.svg", "symbol": "\u0192", "name": "Aruban florin"},
  "AZN": {"flag": "azn.svg", "symbol": "\u018fm", "name": "Azerbaijani manat"},
  "BBD": {"flag": "bbd.svg", "symbol": "\$", "name": "Barbadian dollar"},
  "BDT": {"flag": "bdt.svg", "symbol": "\u09f3", "name": "Bangladeshi taka"},
  "BGN": {"flag": "bgn.svg", "symbol": "\u043b\u0432", "name": "Bulgarian lev"},
  "BHD": {
    "flag": "bhd.svg",
    "symbol": ".\u062f.\u0628",
    "name": "Bahraini dinar"
  },
  "BIF": {"flag": "bif.svg", "symbol": "Fr", "name": "Burundian franc"},
  "BMD": {"flag": "bmd.svg", "symbol": "\$", "name": "Bermudian dollar"},
  "BND": {"flag": "bnd.svg", "symbol": "\$", "name": "Brunei dollar"},
  "BOB": {"flag": "bob.svg", "symbol": "Bs.", "name": "Bolivian boliviano"},
  "BRL": {"flag": "brl.svg", "symbol": "R\$", "name": "Brazilian real"},
  "BSD": {"flag": "bsd.svg", "symbol": "\$", "name": "Bahamian dollar"},
  "BTN": {"flag": "btn.svg", "symbol": "Nu.", "name": "Bhutanese ngultrum"},
  "BWP": {"flag": "bwp.svg", "symbol": "P", "name": "Botswana pula"},
  "BYN": {"flag": "byn.svg", "symbol": "p.", "name": "Belarusian ruble"},
  "BZD": {"flag": "bzd.svg", "symbol": "\$", "name": "Belize dollar"},
  "CAD": {"flag": "cad.svg", "symbol": "\$", "name": "Canadian dollar"},
  "CDF": {"flag": "cdf.svg", "symbol": "Fr", "name": "Congolese franc"},
  "CHF": {"flag": "chf.svg", "symbol": "Fr", "name": "Swiss franc"},
  "CLP": {"flag": "clp.svg", "symbol": "\$", "name": "Chilean peso"},
  "CNY": {"flag": "cny.svg", "symbol": "\u00a5", "name": "Chinese yuan"},
  "COP": {"flag": "cop.svg", "symbol": "\$", "name": "Colombian peso"},
  "CRC": {
    "flag": "crc.svg",
    "symbol": "\u20a1",
    "name": "Costa Rican col\u00f3n"
  },
  "CUP": {"flag": "cup.svg", "symbol": "\$", "name": "Cuban peso"},
  "CVE": {"flag": "cve.svg", "symbol": "\$", "name": "Cape Verdean escudo"},
  "CZK": {"flag": "czk.svg", "symbol": "K\u010d", "name": "Czech koruna"},
  "DJF": {"flag": "djf.svg", "symbol": "Fr", "name": "Djiboutian franc"},
  "DKK": {"flag": "dkk.svg", "symbol": "kr", "name": "Danish krone"},
  "DOP": {"flag": "dop.svg", "symbol": "\$", "name": "Dominican peso"},
  "DZD": {
    "flag": "dzd.svg",
    "symbol": "\u062f.\u062c",
    "name": "Algerian dinar"
  },
  "EGP": {"flag": "egp.svg", "symbol": "\u00a3", "name": "Egyptian pound"},
  "ERN": {"flag": "ern.svg", "symbol": "Nfk", "name": "Eritrean nakfa"},
  "ETB": {"flag": "etb.svg", "symbol": "Br", "name": "Ethiopian birr"},
  "EUR": {"flag": "eur.svg", "symbol": "\u20ac", "name": "Euro"},
  "FJD": {"flag": "fjd.svg", "symbol": "\$", "name": "Fijian dollar"},
  "FKP": {
    "flag": "fkp.svg",
    "symbol": "\u00a3",
    "name": "Falkland Islands pound"
  },
  "GBP": {"flag": "gbp.svg", "symbol": "\u00a3", "name": "Pound sterling"},
  "GEL": {"flag": "gel.svg", "symbol": "\u20be", "name": "Georgian lari"},
  "GGP": {"flag": "ggp.svg", "symbol": "\u00a3", "name": "Guernsey pound"},
  "GHS": {"flag": "ghs.svg", "symbol": "\u20b5", "name": "Ghanaian cedi"},
  "GIP": {"flag": "gip.svg", "symbol": "\u00a3", "name": "Gibraltar pound"},
  "GMD": {"flag": "gmd.svg", "symbol": "D", "name": "Gambian dalasi"},
  "GNF": {"flag": "gnf.svg", "symbol": "Fr", "name": "Guinean franc"},
  "GTQ": {"flag": "gtq.svg", "symbol": "Q", "name": "Guatemalan quetzal"},
  "GYD": {"flag": "gyd.svg", "symbol": "\$", "name": "Guyanese dollar"},
  "HNL": {"flag": "hnl.svg", "symbol": "L", "name": "Honduran lempira"},
  "HTG": {"flag": "htg.svg", "symbol": "G", "name": "Haitian gourde"},
  "HUF": {"flag": "huf.svg", "symbol": "Ft", "name": "Hungarian forint"},
  "IDR": {"flag": "idr.svg", "symbol": "Rp", "name": "Indonesian rupiah"},
  "ILS": {"flag": "ils.svg", "symbol": "\u20aa", "name": "Israeli new shekel"},
  "IMP": {"flag": "imp.svg", "symbol": "\u00a3", "name": "Manx pound"},
  "INR": {"flag": "inr.svg", "symbol": "\u20b9", "name": "Indian rupee"},
  "IQD": {"flag": "iqd.svg", "symbol": "\u062f.\u0639", "name": "Iraqi dinar"},
  "IRR": {"flag": "irr.svg", "symbol": "\ufdfc", "name": "Iranian rial"},
  "ISK": {"flag": "isk.svg", "symbol": "kr", "name": "Icelandic kr\u00f3na"},
  "JEP": {"flag": "jep.svg", "symbol": "\u00a3", "name": "Jersey pound"},
  "JMD": {"flag": "jmd.svg", "symbol": "\$", "name": "Jamaican dollar"},
  "JOD": {
    "flag": "jod.svg",
    "symbol": "\u062f.\u0627",
    "name": "Jordanian dinar"
  },
  "JPY": {"flag": "jpy.svg", "symbol": "\u00a5", "name": "Japanese yen"},
  "KES": {"flag": "kes.svg", "symbol": "KSh", "name": "Kenyan shilling"},
  "KGS": {"flag": "kgs.svg", "symbol": "\u0441", "name": "Kyrgyzstani som"},
  "KHR": {"flag": "khr.svg", "symbol": "\u17db", "name": "Cambodian riel"},
  "KMF": {"flag": "kmf.svg", "symbol": "Fr", "name": "Comorian franc"},
  "KPW": {"flag": "kpw.svg", "symbol": "\u20a9", "name": "North Korean won"},
  "KRW": {"flag": "krw.svg", "symbol": "\u20a9", "name": "South Korean won"},
  "KWD": {
    "flag": "kwd.svg",
    "symbol": "\u062f.\u0643",
    "name": "Kuwaiti dinar"
  },
  "KYD": {"flag": "kyd.svg", "symbol": "\$", "name": "Cayman Islands dollar"},
  "KZT": {"flag": "kzt.svg", "symbol": "\u20b8", "name": "Kazakhstani tenge"},
  "LAK": {"flag": "lak.svg", "symbol": "\u20ad", "name": "Lao kip"},
  "LBP": {
    "flag": "lbp.svg",
    "symbol": "\u0644.\u0644",
    "name": "Lebanese pound"
  },
  "LKR": {
    "flag": "lkr.svg",
    "symbol": "\u0dbb\u0dd4",
    "name": "Sri Lankan rupee"
  },
  "LRD": {"flag": "lrd.svg", "symbol": "\$", "name": "Liberian dollar"},
  "LSL": {"flag": "lsl.svg", "symbol": "L", "name": "Lesotho loti"},
  "LYD": {"flag": "lyd.svg", "symbol": "\u0644.\u062f", "name": "Libyan dinar"},
  "MAD": {
    "flag": "mad.svg",
    "symbol": "\u062f.\u0645.",
    "name": "Moroccan dirham"
  },
  "MDL": {"flag": "mdl.svg", "symbol": "L", "name": "Moldovan leu"},
  "MGA": {"flag": "mga.svg", "symbol": "Ar", "name": "Malagasy ariary"},
  "MKD": {
    "flag": "mkd.svg",
    "symbol": "\u0434\u0435\u043d",
    "name": "Macedonian denar"
  },
  "MMK": {"flag": "mmk.svg", "symbol": "Ks", "name": "Myanmar kyat"},
  "MNT": {
    "flag": "mnt.svg",
    "symbol": "\u20ae",
    "name": "Mongolian t\u00f6gr\u00f6g"
  },
  "MOP": {"flag": "mop.svg", "symbol": "MOP\$", "name": "Macanese pataca"},
  "MUR": {"flag": "mur.svg", "symbol": "\u20a8", "name": "Mauritian rupee"},
  "MVR": {"flag": "mvr.svg", "symbol": ".\u0783", "name": "Maldivian rufiyaa"},
  "MWK": {"flag": "mwk.svg", "symbol": "MK", "name": "Malawian kwacha"},
  "MXN": {"flag": "mxn.svg", "symbol": "\$", "name": "Mexican peso"},
  "MYR": {"flag": "myr.svg", "symbol": "RM", "name": "Malaysian ringgit"},
  "MZN": {"flag": "mzn.svg", "symbol": "MT", "name": "Mozambican metical"},
  "NAD": {"flag": "nad.svg", "symbol": "\$", "name": "Namibian dollar"},
  "NGN": {"flag": "ngn.svg", "symbol": "\u20a6", "name": "Nigerian naira"},
  "NIO": {
    "flag": "nio.svg",
    "symbol": "C\$",
    "name": "Nicaraguan c\u00f3rdoba"
  },
  "NOK": {"flag": "nok.svg", "symbol": "kr", "name": "Norwegian krone"},
  "NPR": {
    "flag": "npr.svg",
    "symbol": "\u0930\u0942",
    "name": "Nepalese rupee"
  },
  "NZD": {"flag": "nzd.svg", "symbol": "\$", "name": "New Zealand dollar"},
  "OMR": {"flag": "omr.svg", "symbol": "\u0631.\u0639.", "name": "Omani rial"},
  "PAB": {"flag": "pab.svg", "symbol": "B/.", "name": "Panamanian balboa"},
  "PEN": {"flag": "pen.svg", "symbol": "S/.", "name": "Peruvian nuevo sol"},
  "PGK": {"flag": "pgk.svg", "symbol": "K", "name": "Papua New Guinean kina"},
  "PHP": {"flag": "php.svg", "symbol": "\u20b1", "name": "Philippine peso"},
  "PKR": {"flag": "pkr.svg", "symbol": "\u20a8", "name": "Pakistani rupee"},
  "PLN": {"flag": "pln.svg", "symbol": "z\u0142", "name": "Polish z\u0142oty"},
  "PYG": {
    "flag": "pyg.svg",
    "symbol": "\u20b2",
    "name": "Paraguayan guaran\u00ed"
  },
  "QAR": {"flag": "qar.svg", "symbol": "\u0631.\u0642", "name": "Qatari riyal"},
  "RON": {"flag": "ron.svg", "symbol": "lei", "name": "Romanian leu"},
  "RSD": {"flag": "rsd.svg", "symbol": "din.", "name": "Serbian dinar"},
  "RUB": {"flag": "rub.svg", "symbol": "\u20bd", "name": "Russian ruble"},
  "RWF": {"flag": "rwf.svg", "symbol": "Fr", "name": "Rwandan franc"},
  "SAR": {"flag": "sar.svg", "symbol": "\u0631.\u0633", "name": "Saudi riyal"},
  "SBD": {"flag": "sbd.svg", "symbol": "\$", "name": "Solomon Islands dollar"},
  "SCR": {"flag": "scr.svg", "symbol": "\u20a8", "name": "Seychellois rupee"},
  "SEK": {"flag": "sek.svg", "symbol": "kr", "name": "Swedish krona"},
  "SGD": {"flag": "sgd.svg", "symbol": "\$", "name": "Singapore dollar"},
  "SHP": {"flag": "shp.svg", "symbol": "\u00a3", "name": "Saint Helena pound"},
  "SLL": {"flag": "sll.svg", "symbol": "Le", "name": "Sierra Leonean leone"},
  "SOS": {"flag": "sos.svg", "symbol": "Sh", "name": "Somali shilling"},
  "SRD": {"flag": "srd.svg", "symbol": "\$", "name": "Surinamese dollar"},
  "SYP": {"flag": "syp.svg", "symbol": "\u00a3", "name": "Syrian pound"},
  "THB": {"flag": "thb.svg", "symbol": "\u0e3f", "name": "Thai baht"},
  "TJS": {
    "flag": "tjs.svg",
    "symbol": "\u0405\u041c",
    "name": "Tajikistani somoni"
  },
  "TMT": {"flag": "tmt.svg", "symbol": "m", "name": "Turkmenistani manat"},
  "TND": {
    "flag": "tnd.svg",
    "symbol": "\u062f.\u062a",
    "name": "Tunisian dinar"
  },
  "TOP": {"flag": "top.svg", "symbol": "T\$", "name": "Tongan pa\u02bbanga"},
  "TRY": {"flag": "try.svg", "symbol": "\u20ba", "name": "Turkish lira"},
  "TTD": {
    "flag": "ttd.svg",
    "symbol": "\$",
    "name": "Trinidad and Tobago dollar"
  },
  "TWD": {"flag": "twd.svg", "symbol": "\$", "name": "New Taiwan dollar"},
  "TZS": {"flag": "tzs.svg", "symbol": "Sh", "name": "Tanzanian shilling"},
  "UAH": {"flag": "uah.svg", "symbol": "\u20b4", "name": "Ukrainian hryvnia"},
  "UGX": {"flag": "ugx.svg", "symbol": "Sh", "name": "Ugandan shilling"},
  "USD": {"flag": "usd.svg", "symbol": "\$", "name": "United States dollar"},
  "UYU": {"flag": "uyu.svg", "symbol": "\$", "name": "Uruguayan peso"},
  "UZS": {
    "flag": "uzs.svg",
    "symbol": "\u040e\u0437\u0431",
    "name": "Uzbekistani som"
  },
  "VEF": {"flag": "vef.svg", "symbol": "Bs", "name": "Venezuelan bol\u00edvar"},
  "VND": {
    "flag": "vnd.svg",
    "symbol": "\u20ab",
    "name": "Vietnamese \u0111\u1ed3ng"
  },
  "VUV": {"flag": "vuv.svg", "symbol": "Vt", "name": "Vanuatu vatu"},
  "WST": {"flag": "wst.svg", "symbol": "T", "name": "Samoan t\u0101l\u0101"},
  "XAF": {
    "flag": "xaf.svg",
    "symbol": "Fr",
    "name": "Central African CFA franc"
  },
  "XCD": {"flag": "xcd.svg", "symbol": "\$", "name": "East Caribbean dollar"},
  "XOF": {"flag": "xof.svg", "symbol": "Fr", "name": "West African CFA franc"},
  "XPF": {"flag": "xpf.svg", "symbol": "Fr", "name": "CFP franc"},
  "YER": {"flag": "yer.svg", "symbol": "\ufdfc", "name": "Yemeni rial"},
  "ZAR": {"flag": "zar.svg", "symbol": "R", "name": "South African rand"},
  "ZMW": {"flag": "zmw.svg", "symbol": "ZK", "name": "Zambian kwacha"}
};

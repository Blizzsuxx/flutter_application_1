import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/currencyConverter.dart';
import 'package:flutter_application_1/providers/store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Store()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Currency Converter',
      home: CurrencyConverter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

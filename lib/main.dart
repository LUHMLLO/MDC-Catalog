import 'package:flutter/material.dart';
import 'package:mdc_catalog/theme.dart';
import 'package:mdc_catalog/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.light,
        title: 'MDC Catalog',
        home: const ScreensScaffold());
  }
}

import 'package:flutter/material.dart';
import 'package:mdc_catalog/theme.dart';
import 'package:mdc_catalog/router.dart';
import 'package:mdc_catalog/functions/permissions.dart';
import 'package:mdc_catalog/functions/directory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    requestPermission();
    getFilesFromFolder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.light,
        title: 'MDC Catalog',
        home: RoutesHandler());
  }
}

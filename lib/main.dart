import 'package:flutter/material.dart';
import 'package:mdc_catalog/theme.dart';
import 'package:mdc_catalog/screens.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

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
    createFolder(".mdcgroup"); //this will be a hidden folder
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
        home: ScreensScaffold());
  }
}

//functions and more
void requestPermission() async {
  var storageStatus = await Permission.storage.status;
  if (!storageStatus.isGranted) {
    await Permission.storage.request();
  }

  var externalStorage = await Permission.manageExternalStorage.status;
  if (!externalStorage.isGranted) {
    await Permission.manageExternalStorage.request();
  }
}

Future<String> createFolder(String cow) async {
  final folderName = cow;
  final path = Directory("storage/emulated/0/$folderName");
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    await Permission.storage.request();
  }
  if ((await path.exists())) {
    return path.path;
  } else {
    path.create();
    return path.path;
  }
}

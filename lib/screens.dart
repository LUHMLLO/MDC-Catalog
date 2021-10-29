import 'package:flutter/material.dart';

import 'package:mdc_catalog/src/components/bottom_nav.dart';

import 'package:mdc_catalog/src/views/favorites_view.dart';
import 'package:mdc_catalog/src/views/folders_view.dart';
import 'package:mdc_catalog/src/views/settings_view.dart';

class ScreensScaffold extends StatefulWidget {
  const ScreensScaffold({Key? key}) : super(key: key);

  @override
  State<ScreensScaffold> createState() => _ScreensScaffoldState();
}

class _ScreensScaffoldState extends State<ScreensScaffold> {
  final pages = const [
    FavoritesView(),
    FoldersView(),
    SettingsView(),
  ];

  final index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[index],
      ),
      bottomNavigationBar: BottomNav(
        onItemSelected: (index) {
          setState(() {
            index = index;
          });
        },
      ),
    );
  }
}

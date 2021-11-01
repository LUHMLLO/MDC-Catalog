import 'package:flutter/material.dart';

import 'package:mdc_catalog/src/components/bottom_nav.dart';

import 'package:mdc_catalog/src/views/favorites_view.dart';
import 'package:mdc_catalog/src/views/folders_view.dart';
import 'package:mdc_catalog/src/views/settings_view.dart';

class ScreensScaffold extends StatelessWidget {
  ScreensScaffold({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Favorites');

  final pages = const [
    FavoritesView(),
    FoldersView(),
    SettingsView(),
  ];

  final pageTitles = const [
    'Favorites',
    'Folders',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        //centerTitle: true,
        title: ValueListenableBuilder(
            valueListenable: title,
            builder: (BuildContext context, String value, _) {
              return Text(value);
            }),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ValueListenableBuilder(
                valueListenable: pageIndex,
                builder: (BuildContext context, int value, _) {
                  return pages[value];
                }),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
        onItemSelected: _onNavigationItemSelected,
      ),
    );
  }

  void _onNavigationItemSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }
}

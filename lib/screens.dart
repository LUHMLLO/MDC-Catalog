import 'package:flutter/material.dart';

import 'package:mdc_catalog/src/components/bottom_nav.dart';

import 'package:mdc_catalog/src/views/favorites_view.dart';
import 'package:mdc_catalog/src/views/folders_view.dart';
import 'package:mdc_catalog/src/views/settings_view.dart';

class ScreensScaffold extends StatelessWidget {
  ScreensScaffold({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = const [
    FavoritesView(),
    FoldersView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: pageIndex,
            builder: (BuildContext context, int value, _) {
              return pages[value];
            }),
      ),
      bottomNavigationBar: BottomNav(
        onItemSelected: (index) {
          pageIndex.value = index;
          print(index);
        },
      ),
    );
  }
}

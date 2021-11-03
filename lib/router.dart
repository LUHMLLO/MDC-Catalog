import 'package:flutter/material.dart';

import 'package:mdc_catalog/src/widgets/bottom_nav.dart';

import 'package:mdc_catalog/src/pages/favorites_view.dart';
import 'package:mdc_catalog/src/pages/folders_view.dart';
import 'package:mdc_catalog/src/pages/settings_view.dart';

class RoutesHandler extends StatelessWidget {
  RoutesHandler({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Favorites');

  final routes = const [
    FavoritesView(),
    FoldersView(),
    SettingsView(),
  ];

  final routesNames = const [
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
                  return routes[value];
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
    title.value = routesNames[index];
    pageIndex.value = index;
  }
}

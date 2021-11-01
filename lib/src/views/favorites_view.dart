import 'dart:io';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
      ),
      children: const [
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
        TestImageFile(),
      ],
    );
  }
}

class TestImageFile extends StatelessWidget {
  const TestImageFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.file(
        File('/storage/emulated/0/Download/descarga.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

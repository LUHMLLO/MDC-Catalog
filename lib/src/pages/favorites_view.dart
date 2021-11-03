import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:mdc_catalog/functions/directory.dart';

List imageList = [
  'storage/emulated/0/.mdcgroup/IMG_20211103_104713.jpg',
  'storage/emulated/0/.mdcgroup/IMG_20211103_104757.jpg',
  'storage/emulated/0/.mdcgroup/IMG_20211103_104804.jpg',
];

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
      ),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return ImageFile(path: imageList[index]);
      },
    );
  }
}

class ImageFile extends StatelessWidget {
  const ImageFile({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        color: Colors.grey,
        child: Image.file(
          File(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

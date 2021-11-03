import 'dart:io';

void createFolder(String name) async {
  final path = Directory("storage/emulated/0/$name");

  if (await path.exists() == false) {
    path.create();
  }
}

Future<List> getFilesFromFolder() async {
  Directory dir = Directory("storage/emulated/0/.mdcgroup");
  List<FileSystemEntity> files = dir.listSync();

  List parsedFiles = [];

  files.forEach((element) {
    parsedFiles.add(element.path);
  });

  return parsedFiles;
}

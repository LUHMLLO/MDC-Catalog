import 'dart:io';

void createFolder(String name) async {
  final path = Directory("storage/emulated/0/$name");

  if (await path.exists() == false) {
    path.create();
  }
}

Future getFilesFromFolder() async {
  final List<FileSystemEntity> entities = await Directory("storage/emulated/0/.mdcgroup").list().toList();
  //final Iterable<File> files = entities.whereType<File>();
  print(entities);
  return entities;
}

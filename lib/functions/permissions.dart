import 'package:mdc_catalog/functions/directory.dart';
import 'package:permission_handler/permission_handler.dart';

void requestPermission() async {
  final storageStatus = await Permission.storage.status;
  if (!storageStatus.isGranted) {
    await Permission.storage.request();
  }

  final externalStorage = await Permission.manageExternalStorage.status;
  if (!externalStorage.isGranted) {
    await Permission.manageExternalStorage.request();
  }

  createFolder(".mdcgroup"); //this will be a hidden folder
}

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

class FileService {
  static final String _pathUploaded = 'public/';

  static Future<String> saveIcon(UploadedFile icon) async {
    final uniqueName = _uniqueFileName(icon.name);
    final pathIcon = 'uploads/icons/$uniqueName';
    final path = _pathUploaded + pathIcon;
    final file = File(path);
    await file.parent.create(recursive: true);
    await file.writeAsBytes(await icon.readAsBytes());
    return pathIcon;
  }

  static Future<String> saveImage(UploadedFile image) async {
    final uniqueName = _uniqueFileName(image.name);
    final pathIcon = 'uploads/images/$uniqueName';
    final path = _pathUploaded + pathIcon;
    final file = File(path);
    await file.parent.create(recursive: true);
    await file.writeAsBytes(await image.readAsBytes());
    return pathIcon;
  }

  static Future<void> delete(String? path) async {
    final file = File('$_pathUploaded$path');
    if (await file.exists()) {
      await file.delete();
    }
  }

  static String _uniqueFileName(String originalName) {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final extension = originalName.split('.').last;
    return '$timestamp.$extension';
  }
}
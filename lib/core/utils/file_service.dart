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
    final pathImage = 'uploads/images/$uniqueName';
    final path = _pathUploaded + pathImage;
    final file = File(path);
    await file.parent.create(recursive: true);
    await file.writeAsBytes(await image.readAsBytes());
    return pathImage;
  }

  static Future<String> saveAudio(UploadedFile audio) async {
    final uniqueName = _uniqueFileName(audio.name);
    final pathAudio = 'uploads/audio/$uniqueName';
    final path = _pathUploaded + pathAudio;
    final file = File(path);
    await file.parent.create(recursive: true);
    await file.writeAsBytes(await audio.readAsBytes());
    return pathAudio;
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
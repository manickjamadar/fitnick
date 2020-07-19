import 'dart:io';

removeFile(String path) async {
  final file = File(path);
  return file.delete();
}

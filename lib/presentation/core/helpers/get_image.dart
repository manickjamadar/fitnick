import 'package:image_picker/image_picker.dart';

Future<PickedFile> pickNewImage({int imageQuality = 100}) async {
  return ImagePicker().getImage(source: ImageSource.gallery, imageQuality: 100);
}

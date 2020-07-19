import 'package:image_picker/image_picker.dart';

Future<PickedFile> pickNewImage() async {
  return ImagePicker().getImage(source: ImageSource.camera);
}

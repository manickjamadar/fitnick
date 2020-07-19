import 'package:image_picker/image_picker.dart';

Future<PickedFile> pickNewVideo() async {
  return ImagePicker().getVideo(source: ImageSource.camera);
}

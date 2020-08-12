import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/domain/music/models/music.dart';

List<Music> allMusic = [
  Music(
    id: UniqueId(),
    name: "Cartoon - On & On",
    path: "cartoon_on_and_on.mp3",
  ),
  Music(
    id: UniqueId(),
    name: "Itro & Tobu",
    path: "itro_and_tobu.mp3",
  ),
];

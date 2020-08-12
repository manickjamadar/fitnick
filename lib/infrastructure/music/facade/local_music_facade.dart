import 'package:fitnick/domain/music/facade/i_music_facade.dart';
import 'package:fitnick/domain/music/models/music.dart';
import 'package:fitnick/infrastructure/music/data_source/data.dart';

class LocalMusicFacade extends IMusicFacade {
  @override
  List<Music> getAll() {
    return [...allMusic];
  }
}

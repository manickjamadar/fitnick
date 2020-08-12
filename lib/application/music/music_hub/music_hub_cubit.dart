import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/music/facade/i_music_facade.dart';
import 'package:fitnick/domain/music/models/music.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_hub_state.dart';
part 'music_hub_cubit.freezed.dart';

class MusicHubCubit extends Cubit<MusicHubState> {
  final IMusicFacade musicFacade;
  MusicHubCubit({@required this.musicFacade}) : super(MusicHubState.loading()) {
    _init();
  }

  //events
  void _init() {
    emit(MusicHubState.loaded(musics: musicFacade.getAll()));
  }
}

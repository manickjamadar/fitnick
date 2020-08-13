import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/music/facade/i_music_facade.dart';
import 'package:fitnick/domain/music/models/music.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_hub_state.dart';
part 'music_hub_cubit.freezed.dart';

class MusicHubCubit extends Cubit<MusicHubState> {
  static AudioCache cachePlayer = AudioCache(prefix: "music/");
  final IMusicFacade musicFacade;
  MusicHubCubit({@required this.musicFacade}) : super(MusicHubState.loading()) {
    _init();
  }

  AudioPlayer player;

  Future<void> _stopRunningMusic() async {
    if (player == null) return;
    if (player.state == AudioPlayerState.PLAYING) {
      await player.stop();
    }
  }

  List<Music> _resetMusicPlayingList(List<Music> musicList) {
    return musicList.map((m) => m.copyWith(isPlaying: false)).toList();
  }

  //!events ===============
  void _init() {
    final musicList = musicFacade.getAll();
    cachePlayer.loadAll(musicList.map((e) => e.path).toList());
    emit(MusicHubState.loaded(musics: musicList));
  }

  void changeVolume(double volume) {
    player?.setVolume(volume);
  }

  void maxVolume() {
    player?.setVolume(1);
  }

  Future<void> play(Music music) async {
    _stopRunningMusic();
    player = await cachePlayer.loop(music.path);
    state.maybeWhen(
        orElse: () {},
        loaded: (List<Music> musicList) {
          final newMusicList = _resetMusicPlayingList(musicList)
              .map(
                  (m) => m.id == music.id ? music.copyWith(isPlaying: true) : m)
              .toList();
          emit(MusicHubState.loaded(musics: newMusicList));
        });
  }

  Future<void> stop() async {
    await _stopRunningMusic();
    state.maybeWhen(
        orElse: () {},
        loaded: (List<Music> musicList) {
          emit(MusicHubState.loaded(musics: _resetMusicPlayingList(musicList)));
        });
  }

  @override
  Future<void> close() async {
    await _stopRunningMusic();
    player?.dispose();
    cachePlayer?.clearCache();
    return super.close();
  }
}

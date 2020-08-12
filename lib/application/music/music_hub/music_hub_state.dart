part of 'music_hub_cubit.dart';

@freezed
abstract class MusicHubState with _$MusicHubState {
  const factory MusicHubState.loading() = _MusicLoading;
  const factory MusicHubState.loaded({@required List<Music> musics}) =
      _MusicLoaded;
  const factory MusicHubState.loadedError() = _MusicLoadedError;
}

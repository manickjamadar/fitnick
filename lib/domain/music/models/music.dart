import 'package:fitnick/domain/core/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "music.freezed.dart";

@freezed
abstract class Music with _$Music {
  const factory Music(
      {@required UniqueId id,
      @required String name,
      @required String path,
      @Default(false) bool isPlaying}) = _Music;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'music.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MusicTearOff {
  const _$MusicTearOff();

  _Music call(
      {@required UniqueId id,
      @required String name,
      @required String path,
      bool isPlaying = false}) {
    return _Music(
      id: id,
      name: name,
      path: path,
      isPlaying: isPlaying,
    );
  }
}

// ignore: unused_element
const $Music = _$MusicTearOff();

mixin _$Music {
  UniqueId get id;
  String get name;
  String get path;
  bool get isPlaying;

  $MusicCopyWith<Music> get copyWith;
}

abstract class $MusicCopyWith<$Res> {
  factory $MusicCopyWith(Music value, $Res Function(Music) then) =
      _$MusicCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, String path, bool isPlaying});
}

class _$MusicCopyWithImpl<$Res> implements $MusicCopyWith<$Res> {
  _$MusicCopyWithImpl(this._value, this._then);

  final Music _value;
  // ignore: unused_field
  final $Res Function(Music) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object path = freezed,
    Object isPlaying = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      path: path == freezed ? _value.path : path as String,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
    ));
  }
}

abstract class _$MusicCopyWith<$Res> implements $MusicCopyWith<$Res> {
  factory _$MusicCopyWith(_Music value, $Res Function(_Music) then) =
      __$MusicCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, String path, bool isPlaying});
}

class __$MusicCopyWithImpl<$Res> extends _$MusicCopyWithImpl<$Res>
    implements _$MusicCopyWith<$Res> {
  __$MusicCopyWithImpl(_Music _value, $Res Function(_Music) _then)
      : super(_value, (v) => _then(v as _Music));

  @override
  _Music get _value => super._value as _Music;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object path = freezed,
    Object isPlaying = freezed,
  }) {
    return _then(_Music(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      path: path == freezed ? _value.path : path as String,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
    ));
  }
}

class _$_Music implements _Music {
  const _$_Music(
      {@required this.id,
      @required this.name,
      @required this.path,
      this.isPlaying = false})
      : assert(id != null),
        assert(name != null),
        assert(path != null),
        assert(isPlaying != null);

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String path;
  @JsonKey(defaultValue: false)
  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'Music(id: $id, name: $name, path: $path, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Music &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(isPlaying);

  @override
  _$MusicCopyWith<_Music> get copyWith =>
      __$MusicCopyWithImpl<_Music>(this, _$identity);
}

abstract class _Music implements Music {
  const factory _Music(
      {@required UniqueId id,
      @required String name,
      @required String path,
      bool isPlaying}) = _$_Music;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get path;
  @override
  bool get isPlaying;
  @override
  _$MusicCopyWith<_Music> get copyWith;
}

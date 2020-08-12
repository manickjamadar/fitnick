// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'music_hub_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MusicHubStateTearOff {
  const _$MusicHubStateTearOff();

  _MusicLoading loading() {
    return const _MusicLoading();
  }

  _MusicLoaded loaded({@required List<Music> musics}) {
    return _MusicLoaded(
      musics: musics,
    );
  }

  _MusicLoadedError loadedError() {
    return const _MusicLoadedError();
  }
}

// ignore: unused_element
const $MusicHubState = _$MusicHubStateTearOff();

mixin _$MusicHubState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Music> musics),
    @required Result loadedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Music> musics),
    Result loadedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_MusicLoading value),
    @required Result loaded(_MusicLoaded value),
    @required Result loadedError(_MusicLoadedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_MusicLoading value),
    Result loaded(_MusicLoaded value),
    Result loadedError(_MusicLoadedError value),
    @required Result orElse(),
  });
}

abstract class $MusicHubStateCopyWith<$Res> {
  factory $MusicHubStateCopyWith(
          MusicHubState value, $Res Function(MusicHubState) then) =
      _$MusicHubStateCopyWithImpl<$Res>;
}

class _$MusicHubStateCopyWithImpl<$Res>
    implements $MusicHubStateCopyWith<$Res> {
  _$MusicHubStateCopyWithImpl(this._value, this._then);

  final MusicHubState _value;
  // ignore: unused_field
  final $Res Function(MusicHubState) _then;
}

abstract class _$MusicLoadingCopyWith<$Res> {
  factory _$MusicLoadingCopyWith(
          _MusicLoading value, $Res Function(_MusicLoading) then) =
      __$MusicLoadingCopyWithImpl<$Res>;
}

class __$MusicLoadingCopyWithImpl<$Res>
    extends _$MusicHubStateCopyWithImpl<$Res>
    implements _$MusicLoadingCopyWith<$Res> {
  __$MusicLoadingCopyWithImpl(
      _MusicLoading _value, $Res Function(_MusicLoading) _then)
      : super(_value, (v) => _then(v as _MusicLoading));

  @override
  _MusicLoading get _value => super._value as _MusicLoading;
}

class _$_MusicLoading implements _MusicLoading {
  const _$_MusicLoading();

  @override
  String toString() {
    return 'MusicHubState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MusicLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Music> musics),
    @required Result loadedError(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Music> musics),
    Result loadedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_MusicLoading value),
    @required Result loaded(_MusicLoaded value),
    @required Result loadedError(_MusicLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_MusicLoading value),
    Result loaded(_MusicLoaded value),
    Result loadedError(_MusicLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MusicLoading implements MusicHubState {
  const factory _MusicLoading() = _$_MusicLoading;
}

abstract class _$MusicLoadedCopyWith<$Res> {
  factory _$MusicLoadedCopyWith(
          _MusicLoaded value, $Res Function(_MusicLoaded) then) =
      __$MusicLoadedCopyWithImpl<$Res>;
  $Res call({List<Music> musics});
}

class __$MusicLoadedCopyWithImpl<$Res> extends _$MusicHubStateCopyWithImpl<$Res>
    implements _$MusicLoadedCopyWith<$Res> {
  __$MusicLoadedCopyWithImpl(
      _MusicLoaded _value, $Res Function(_MusicLoaded) _then)
      : super(_value, (v) => _then(v as _MusicLoaded));

  @override
  _MusicLoaded get _value => super._value as _MusicLoaded;

  @override
  $Res call({
    Object musics = freezed,
  }) {
    return _then(_MusicLoaded(
      musics: musics == freezed ? _value.musics : musics as List<Music>,
    ));
  }
}

class _$_MusicLoaded implements _MusicLoaded {
  const _$_MusicLoaded({@required this.musics}) : assert(musics != null);

  @override
  final List<Music> musics;

  @override
  String toString() {
    return 'MusicHubState.loaded(musics: $musics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MusicLoaded &&
            (identical(other.musics, musics) ||
                const DeepCollectionEquality().equals(other.musics, musics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(musics);

  @override
  _$MusicLoadedCopyWith<_MusicLoaded> get copyWith =>
      __$MusicLoadedCopyWithImpl<_MusicLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Music> musics),
    @required Result loadedError(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(musics);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Music> musics),
    Result loadedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(musics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_MusicLoading value),
    @required Result loaded(_MusicLoaded value),
    @required Result loadedError(_MusicLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_MusicLoading value),
    Result loaded(_MusicLoaded value),
    Result loadedError(_MusicLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MusicLoaded implements MusicHubState {
  const factory _MusicLoaded({@required List<Music> musics}) = _$_MusicLoaded;

  List<Music> get musics;
  _$MusicLoadedCopyWith<_MusicLoaded> get copyWith;
}

abstract class _$MusicLoadedErrorCopyWith<$Res> {
  factory _$MusicLoadedErrorCopyWith(
          _MusicLoadedError value, $Res Function(_MusicLoadedError) then) =
      __$MusicLoadedErrorCopyWithImpl<$Res>;
}

class __$MusicLoadedErrorCopyWithImpl<$Res>
    extends _$MusicHubStateCopyWithImpl<$Res>
    implements _$MusicLoadedErrorCopyWith<$Res> {
  __$MusicLoadedErrorCopyWithImpl(
      _MusicLoadedError _value, $Res Function(_MusicLoadedError) _then)
      : super(_value, (v) => _then(v as _MusicLoadedError));

  @override
  _MusicLoadedError get _value => super._value as _MusicLoadedError;
}

class _$_MusicLoadedError implements _MusicLoadedError {
  const _$_MusicLoadedError();

  @override
  String toString() {
    return 'MusicHubState.loadedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MusicLoadedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Music> musics),
    @required Result loadedError(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loadedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Music> musics),
    Result loadedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_MusicLoading value),
    @required Result loaded(_MusicLoaded value),
    @required Result loadedError(_MusicLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loadedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_MusicLoading value),
    Result loaded(_MusicLoaded value),
    Result loadedError(_MusicLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError(this);
    }
    return orElse();
  }
}

abstract class _MusicLoadedError implements MusicHubState {
  const factory _MusicLoadedError() = _$_MusicLoadedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_hub_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountHubStateTearOff {
  const _$AccountHubStateTearOff();

  _AccountHubLoading loading() {
    return const _AccountHubLoading();
  }

  _AccountHubLoaded loaded({@required Account account}) {
    return _AccountHubLoaded(
      account: account,
    );
  }
}

// ignore: unused_element
const $AccountHubState = _$AccountHubStateTearOff();

mixin _$AccountHubState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Account account),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Account account),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_AccountHubLoading value),
    @required Result loaded(_AccountHubLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_AccountHubLoading value),
    Result loaded(_AccountHubLoaded value),
    @required Result orElse(),
  });
}

abstract class $AccountHubStateCopyWith<$Res> {
  factory $AccountHubStateCopyWith(
          AccountHubState value, $Res Function(AccountHubState) then) =
      _$AccountHubStateCopyWithImpl<$Res>;
}

class _$AccountHubStateCopyWithImpl<$Res>
    implements $AccountHubStateCopyWith<$Res> {
  _$AccountHubStateCopyWithImpl(this._value, this._then);

  final AccountHubState _value;
  // ignore: unused_field
  final $Res Function(AccountHubState) _then;
}

abstract class _$AccountHubLoadingCopyWith<$Res> {
  factory _$AccountHubLoadingCopyWith(
          _AccountHubLoading value, $Res Function(_AccountHubLoading) then) =
      __$AccountHubLoadingCopyWithImpl<$Res>;
}

class __$AccountHubLoadingCopyWithImpl<$Res>
    extends _$AccountHubStateCopyWithImpl<$Res>
    implements _$AccountHubLoadingCopyWith<$Res> {
  __$AccountHubLoadingCopyWithImpl(
      _AccountHubLoading _value, $Res Function(_AccountHubLoading) _then)
      : super(_value, (v) => _then(v as _AccountHubLoading));

  @override
  _AccountHubLoading get _value => super._value as _AccountHubLoading;
}

class _$_AccountHubLoading implements _AccountHubLoading {
  const _$_AccountHubLoading();

  @override
  String toString() {
    return 'AccountHubState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AccountHubLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Account account),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Account account),
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
    @required Result loading(_AccountHubLoading value),
    @required Result loaded(_AccountHubLoaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_AccountHubLoading value),
    Result loaded(_AccountHubLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AccountHubLoading implements AccountHubState {
  const factory _AccountHubLoading() = _$_AccountHubLoading;
}

abstract class _$AccountHubLoadedCopyWith<$Res> {
  factory _$AccountHubLoadedCopyWith(
          _AccountHubLoaded value, $Res Function(_AccountHubLoaded) then) =
      __$AccountHubLoadedCopyWithImpl<$Res>;
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

class __$AccountHubLoadedCopyWithImpl<$Res>
    extends _$AccountHubStateCopyWithImpl<$Res>
    implements _$AccountHubLoadedCopyWith<$Res> {
  __$AccountHubLoadedCopyWithImpl(
      _AccountHubLoaded _value, $Res Function(_AccountHubLoaded) _then)
      : super(_value, (v) => _then(v as _AccountHubLoaded));

  @override
  _AccountHubLoaded get _value => super._value as _AccountHubLoaded;

  @override
  $Res call({
    Object account = freezed,
  }) {
    return _then(_AccountHubLoaded(
      account: account == freezed ? _value.account : account as Account,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

class _$_AccountHubLoaded implements _AccountHubLoaded {
  const _$_AccountHubLoaded({@required this.account}) : assert(account != null);

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountHubState.loaded(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountHubLoaded &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(account);

  @override
  _$AccountHubLoadedCopyWith<_AccountHubLoaded> get copyWith =>
      __$AccountHubLoadedCopyWithImpl<_AccountHubLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Account account),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(account);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Account account),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_AccountHubLoading value),
    @required Result loaded(_AccountHubLoaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_AccountHubLoading value),
    Result loaded(_AccountHubLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AccountHubLoaded implements AccountHubState {
  const factory _AccountHubLoaded({@required Account account}) =
      _$_AccountHubLoaded;

  Account get account;
  _$AccountHubLoadedCopyWith<_AccountHubLoaded> get copyWith;
}

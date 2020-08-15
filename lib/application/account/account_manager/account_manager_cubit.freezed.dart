// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountManagerStateTearOff {
  const _$AccountManagerStateTearOff();

  _AccountManagerInitial initial() {
    return const _AccountManagerInitial();
  }

  _AccountManagerPurchaseSuccessful purchaseSuccessful(Offer offer) {
    return _AccountManagerPurchaseSuccessful(
      offer,
    );
  }

  _AccountManagerPurchaseUnSuccessful purchaseUnSuccessful(Offer offer) {
    return _AccountManagerPurchaseUnSuccessful(
      offer,
    );
  }

  _AccountManagerStateSpendSuccessful spendSuccessFul(Coin coin) {
    return _AccountManagerStateSpendSuccessful(
      coin,
    );
  }

  _AccountManagerInsufficientBalance inSufficientBalance() {
    return const _AccountManagerInsufficientBalance();
  }
}

// ignore: unused_element
const $AccountManagerState = _$AccountManagerStateTearOff();

mixin _$AccountManagerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result purchaseSuccessful(Offer offer),
    @required Result purchaseUnSuccessful(Offer offer),
    @required Result spendSuccessFul(Coin coin),
    @required Result inSufficientBalance(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result purchaseSuccessful(Offer offer),
    Result purchaseUnSuccessful(Offer offer),
    Result spendSuccessFul(Coin coin),
    Result inSufficientBalance(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_AccountManagerInitial value),
    @required
        Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    @required
        Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    @required Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    @required
        Result inSufficientBalance(_AccountManagerInsufficientBalance value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_AccountManagerInitial value),
    Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    Result inSufficientBalance(_AccountManagerInsufficientBalance value),
    @required Result orElse(),
  });
}

abstract class $AccountManagerStateCopyWith<$Res> {
  factory $AccountManagerStateCopyWith(
          AccountManagerState value, $Res Function(AccountManagerState) then) =
      _$AccountManagerStateCopyWithImpl<$Res>;
}

class _$AccountManagerStateCopyWithImpl<$Res>
    implements $AccountManagerStateCopyWith<$Res> {
  _$AccountManagerStateCopyWithImpl(this._value, this._then);

  final AccountManagerState _value;
  // ignore: unused_field
  final $Res Function(AccountManagerState) _then;
}

abstract class _$AccountManagerInitialCopyWith<$Res> {
  factory _$AccountManagerInitialCopyWith(_AccountManagerInitial value,
          $Res Function(_AccountManagerInitial) then) =
      __$AccountManagerInitialCopyWithImpl<$Res>;
}

class __$AccountManagerInitialCopyWithImpl<$Res>
    extends _$AccountManagerStateCopyWithImpl<$Res>
    implements _$AccountManagerInitialCopyWith<$Res> {
  __$AccountManagerInitialCopyWithImpl(_AccountManagerInitial _value,
      $Res Function(_AccountManagerInitial) _then)
      : super(_value, (v) => _then(v as _AccountManagerInitial));

  @override
  _AccountManagerInitial get _value => super._value as _AccountManagerInitial;
}

class _$_AccountManagerInitial implements _AccountManagerInitial {
  const _$_AccountManagerInitial();

  @override
  String toString() {
    return 'AccountManagerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AccountManagerInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result purchaseSuccessful(Offer offer),
    @required Result purchaseUnSuccessful(Offer offer),
    @required Result spendSuccessFul(Coin coin),
    @required Result inSufficientBalance(),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result purchaseSuccessful(Offer offer),
    Result purchaseUnSuccessful(Offer offer),
    Result spendSuccessFul(Coin coin),
    Result inSufficientBalance(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_AccountManagerInitial value),
    @required
        Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    @required
        Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    @required Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    @required
        Result inSufficientBalance(_AccountManagerInsufficientBalance value),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_AccountManagerInitial value),
    Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    Result inSufficientBalance(_AccountManagerInsufficientBalance value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AccountManagerInitial implements AccountManagerState {
  const factory _AccountManagerInitial() = _$_AccountManagerInitial;
}

abstract class _$AccountManagerPurchaseSuccessfulCopyWith<$Res> {
  factory _$AccountManagerPurchaseSuccessfulCopyWith(
          _AccountManagerPurchaseSuccessful value,
          $Res Function(_AccountManagerPurchaseSuccessful) then) =
      __$AccountManagerPurchaseSuccessfulCopyWithImpl<$Res>;
  $Res call({Offer offer});

  $OfferCopyWith<$Res> get offer;
}

class __$AccountManagerPurchaseSuccessfulCopyWithImpl<$Res>
    extends _$AccountManagerStateCopyWithImpl<$Res>
    implements _$AccountManagerPurchaseSuccessfulCopyWith<$Res> {
  __$AccountManagerPurchaseSuccessfulCopyWithImpl(
      _AccountManagerPurchaseSuccessful _value,
      $Res Function(_AccountManagerPurchaseSuccessful) _then)
      : super(_value, (v) => _then(v as _AccountManagerPurchaseSuccessful));

  @override
  _AccountManagerPurchaseSuccessful get _value =>
      super._value as _AccountManagerPurchaseSuccessful;

  @override
  $Res call({
    Object offer = freezed,
  }) {
    return _then(_AccountManagerPurchaseSuccessful(
      offer == freezed ? _value.offer : offer as Offer,
    ));
  }

  @override
  $OfferCopyWith<$Res> get offer {
    if (_value.offer == null) {
      return null;
    }
    return $OfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }
}

class _$_AccountManagerPurchaseSuccessful
    implements _AccountManagerPurchaseSuccessful {
  const _$_AccountManagerPurchaseSuccessful(this.offer) : assert(offer != null);

  @override
  final Offer offer;

  @override
  String toString() {
    return 'AccountManagerState.purchaseSuccessful(offer: $offer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountManagerPurchaseSuccessful &&
            (identical(other.offer, offer) ||
                const DeepCollectionEquality().equals(other.offer, offer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offer);

  @override
  _$AccountManagerPurchaseSuccessfulCopyWith<_AccountManagerPurchaseSuccessful>
      get copyWith => __$AccountManagerPurchaseSuccessfulCopyWithImpl<
          _AccountManagerPurchaseSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result purchaseSuccessful(Offer offer),
    @required Result purchaseUnSuccessful(Offer offer),
    @required Result spendSuccessFul(Coin coin),
    @required Result inSufficientBalance(),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return purchaseSuccessful(offer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result purchaseSuccessful(Offer offer),
    Result purchaseUnSuccessful(Offer offer),
    Result spendSuccessFul(Coin coin),
    Result inSufficientBalance(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (purchaseSuccessful != null) {
      return purchaseSuccessful(offer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_AccountManagerInitial value),
    @required
        Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    @required
        Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    @required Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    @required
        Result inSufficientBalance(_AccountManagerInsufficientBalance value),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return purchaseSuccessful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_AccountManagerInitial value),
    Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    Result inSufficientBalance(_AccountManagerInsufficientBalance value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (purchaseSuccessful != null) {
      return purchaseSuccessful(this);
    }
    return orElse();
  }
}

abstract class _AccountManagerPurchaseSuccessful
    implements AccountManagerState {
  const factory _AccountManagerPurchaseSuccessful(Offer offer) =
      _$_AccountManagerPurchaseSuccessful;

  Offer get offer;
  _$AccountManagerPurchaseSuccessfulCopyWith<_AccountManagerPurchaseSuccessful>
      get copyWith;
}

abstract class _$AccountManagerPurchaseUnSuccessfulCopyWith<$Res> {
  factory _$AccountManagerPurchaseUnSuccessfulCopyWith(
          _AccountManagerPurchaseUnSuccessful value,
          $Res Function(_AccountManagerPurchaseUnSuccessful) then) =
      __$AccountManagerPurchaseUnSuccessfulCopyWithImpl<$Res>;
  $Res call({Offer offer});

  $OfferCopyWith<$Res> get offer;
}

class __$AccountManagerPurchaseUnSuccessfulCopyWithImpl<$Res>
    extends _$AccountManagerStateCopyWithImpl<$Res>
    implements _$AccountManagerPurchaseUnSuccessfulCopyWith<$Res> {
  __$AccountManagerPurchaseUnSuccessfulCopyWithImpl(
      _AccountManagerPurchaseUnSuccessful _value,
      $Res Function(_AccountManagerPurchaseUnSuccessful) _then)
      : super(_value, (v) => _then(v as _AccountManagerPurchaseUnSuccessful));

  @override
  _AccountManagerPurchaseUnSuccessful get _value =>
      super._value as _AccountManagerPurchaseUnSuccessful;

  @override
  $Res call({
    Object offer = freezed,
  }) {
    return _then(_AccountManagerPurchaseUnSuccessful(
      offer == freezed ? _value.offer : offer as Offer,
    ));
  }

  @override
  $OfferCopyWith<$Res> get offer {
    if (_value.offer == null) {
      return null;
    }
    return $OfferCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value));
    });
  }
}

class _$_AccountManagerPurchaseUnSuccessful
    implements _AccountManagerPurchaseUnSuccessful {
  const _$_AccountManagerPurchaseUnSuccessful(this.offer)
      : assert(offer != null);

  @override
  final Offer offer;

  @override
  String toString() {
    return 'AccountManagerState.purchaseUnSuccessful(offer: $offer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountManagerPurchaseUnSuccessful &&
            (identical(other.offer, offer) ||
                const DeepCollectionEquality().equals(other.offer, offer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(offer);

  @override
  _$AccountManagerPurchaseUnSuccessfulCopyWith<
          _AccountManagerPurchaseUnSuccessful>
      get copyWith => __$AccountManagerPurchaseUnSuccessfulCopyWithImpl<
          _AccountManagerPurchaseUnSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result purchaseSuccessful(Offer offer),
    @required Result purchaseUnSuccessful(Offer offer),
    @required Result spendSuccessFul(Coin coin),
    @required Result inSufficientBalance(),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return purchaseUnSuccessful(offer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result purchaseSuccessful(Offer offer),
    Result purchaseUnSuccessful(Offer offer),
    Result spendSuccessFul(Coin coin),
    Result inSufficientBalance(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (purchaseUnSuccessful != null) {
      return purchaseUnSuccessful(offer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_AccountManagerInitial value),
    @required
        Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    @required
        Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    @required Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    @required
        Result inSufficientBalance(_AccountManagerInsufficientBalance value),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return purchaseUnSuccessful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_AccountManagerInitial value),
    Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    Result inSufficientBalance(_AccountManagerInsufficientBalance value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (purchaseUnSuccessful != null) {
      return purchaseUnSuccessful(this);
    }
    return orElse();
  }
}

abstract class _AccountManagerPurchaseUnSuccessful
    implements AccountManagerState {
  const factory _AccountManagerPurchaseUnSuccessful(Offer offer) =
      _$_AccountManagerPurchaseUnSuccessful;

  Offer get offer;
  _$AccountManagerPurchaseUnSuccessfulCopyWith<
      _AccountManagerPurchaseUnSuccessful> get copyWith;
}

abstract class _$AccountManagerStateSpendSuccessfulCopyWith<$Res> {
  factory _$AccountManagerStateSpendSuccessfulCopyWith(
          _AccountManagerStateSpendSuccessful value,
          $Res Function(_AccountManagerStateSpendSuccessful) then) =
      __$AccountManagerStateSpendSuccessfulCopyWithImpl<$Res>;
  $Res call({Coin coin});
}

class __$AccountManagerStateSpendSuccessfulCopyWithImpl<$Res>
    extends _$AccountManagerStateCopyWithImpl<$Res>
    implements _$AccountManagerStateSpendSuccessfulCopyWith<$Res> {
  __$AccountManagerStateSpendSuccessfulCopyWithImpl(
      _AccountManagerStateSpendSuccessful _value,
      $Res Function(_AccountManagerStateSpendSuccessful) _then)
      : super(_value, (v) => _then(v as _AccountManagerStateSpendSuccessful));

  @override
  _AccountManagerStateSpendSuccessful get _value =>
      super._value as _AccountManagerStateSpendSuccessful;

  @override
  $Res call({
    Object coin = freezed,
  }) {
    return _then(_AccountManagerStateSpendSuccessful(
      coin == freezed ? _value.coin : coin as Coin,
    ));
  }
}

class _$_AccountManagerStateSpendSuccessful
    implements _AccountManagerStateSpendSuccessful {
  const _$_AccountManagerStateSpendSuccessful(this.coin) : assert(coin != null);

  @override
  final Coin coin;

  @override
  String toString() {
    return 'AccountManagerState.spendSuccessFul(coin: $coin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountManagerStateSpendSuccessful &&
            (identical(other.coin, coin) ||
                const DeepCollectionEquality().equals(other.coin, coin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coin);

  @override
  _$AccountManagerStateSpendSuccessfulCopyWith<
          _AccountManagerStateSpendSuccessful>
      get copyWith => __$AccountManagerStateSpendSuccessfulCopyWithImpl<
          _AccountManagerStateSpendSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result purchaseSuccessful(Offer offer),
    @required Result purchaseUnSuccessful(Offer offer),
    @required Result spendSuccessFul(Coin coin),
    @required Result inSufficientBalance(),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return spendSuccessFul(coin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result purchaseSuccessful(Offer offer),
    Result purchaseUnSuccessful(Offer offer),
    Result spendSuccessFul(Coin coin),
    Result inSufficientBalance(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (spendSuccessFul != null) {
      return spendSuccessFul(coin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_AccountManagerInitial value),
    @required
        Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    @required
        Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    @required Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    @required
        Result inSufficientBalance(_AccountManagerInsufficientBalance value),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return spendSuccessFul(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_AccountManagerInitial value),
    Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    Result inSufficientBalance(_AccountManagerInsufficientBalance value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (spendSuccessFul != null) {
      return spendSuccessFul(this);
    }
    return orElse();
  }
}

abstract class _AccountManagerStateSpendSuccessful
    implements AccountManagerState {
  const factory _AccountManagerStateSpendSuccessful(Coin coin) =
      _$_AccountManagerStateSpendSuccessful;

  Coin get coin;
  _$AccountManagerStateSpendSuccessfulCopyWith<
      _AccountManagerStateSpendSuccessful> get copyWith;
}

abstract class _$AccountManagerInsufficientBalanceCopyWith<$Res> {
  factory _$AccountManagerInsufficientBalanceCopyWith(
          _AccountManagerInsufficientBalance value,
          $Res Function(_AccountManagerInsufficientBalance) then) =
      __$AccountManagerInsufficientBalanceCopyWithImpl<$Res>;
}

class __$AccountManagerInsufficientBalanceCopyWithImpl<$Res>
    extends _$AccountManagerStateCopyWithImpl<$Res>
    implements _$AccountManagerInsufficientBalanceCopyWith<$Res> {
  __$AccountManagerInsufficientBalanceCopyWithImpl(
      _AccountManagerInsufficientBalance _value,
      $Res Function(_AccountManagerInsufficientBalance) _then)
      : super(_value, (v) => _then(v as _AccountManagerInsufficientBalance));

  @override
  _AccountManagerInsufficientBalance get _value =>
      super._value as _AccountManagerInsufficientBalance;
}

class _$_AccountManagerInsufficientBalance
    implements _AccountManagerInsufficientBalance {
  const _$_AccountManagerInsufficientBalance();

  @override
  String toString() {
    return 'AccountManagerState.inSufficientBalance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountManagerInsufficientBalance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result purchaseSuccessful(Offer offer),
    @required Result purchaseUnSuccessful(Offer offer),
    @required Result spendSuccessFul(Coin coin),
    @required Result inSufficientBalance(),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return inSufficientBalance();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result purchaseSuccessful(Offer offer),
    Result purchaseUnSuccessful(Offer offer),
    Result spendSuccessFul(Coin coin),
    Result inSufficientBalance(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inSufficientBalance != null) {
      return inSufficientBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_AccountManagerInitial value),
    @required
        Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    @required
        Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    @required Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    @required
        Result inSufficientBalance(_AccountManagerInsufficientBalance value),
  }) {
    assert(initial != null);
    assert(purchaseSuccessful != null);
    assert(purchaseUnSuccessful != null);
    assert(spendSuccessFul != null);
    assert(inSufficientBalance != null);
    return inSufficientBalance(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_AccountManagerInitial value),
    Result purchaseSuccessful(_AccountManagerPurchaseSuccessful value),
    Result purchaseUnSuccessful(_AccountManagerPurchaseUnSuccessful value),
    Result spendSuccessFul(_AccountManagerStateSpendSuccessful value),
    Result inSufficientBalance(_AccountManagerInsufficientBalance value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inSufficientBalance != null) {
      return inSufficientBalance(this);
    }
    return orElse();
  }
}

abstract class _AccountManagerInsufficientBalance
    implements AccountManagerState {
  const factory _AccountManagerInsufficientBalance() =
      _$_AccountManagerInsufficientBalance;
}

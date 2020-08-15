// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call({@required Coin balance}) {
    return _Account(
      balance: balance,
    );
  }
}

// ignore: unused_element
const $Account = _$AccountTearOff();

mixin _$Account {
  Coin get balance;

  $AccountCopyWith<Account> get copyWith;
}

abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call({Coin balance});
}

class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object balance = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed ? _value.balance : balance as Coin,
    ));
  }
}

abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call({Coin balance});
}

class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object balance = freezed,
  }) {
    return _then(_Account(
      balance: balance == freezed ? _value.balance : balance as Coin,
    ));
  }
}

class _$_Account extends _Account {
  const _$_Account({@required this.balance})
      : assert(balance != null),
        super._();

  @override
  final Coin balance;

  @override
  String toString() {
    return 'Account(balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(balance);

  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);
}

abstract class _Account extends Account {
  const _Account._() : super._();
  const factory _Account({@required Coin balance}) = _$_Account;

  @override
  Coin get balance;
  @override
  _$AccountCopyWith<_Account> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurrencyTearOff {
  const _$CurrencyTearOff();

  _Currency call({@required double value, @required CurrencySign sign}) {
    return _Currency(
      value: value,
      sign: sign,
    );
  }
}

// ignore: unused_element
const $Currency = _$CurrencyTearOff();

mixin _$Currency {
  double get value;
  CurrencySign get sign;

  $CurrencyCopyWith<Currency> get copyWith;
}

abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call({double value, CurrencySign sign});

  $CurrencySignCopyWith<$Res> get sign;
}

class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object value = freezed,
    Object sign = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as double,
      sign: sign == freezed ? _value.sign : sign as CurrencySign,
    ));
  }

  @override
  $CurrencySignCopyWith<$Res> get sign {
    if (_value.sign == null) {
      return null;
    }
    return $CurrencySignCopyWith<$Res>(_value.sign, (value) {
      return _then(_value.copyWith(sign: value));
    });
  }
}

abstract class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) then) =
      __$CurrencyCopyWithImpl<$Res>;
  @override
  $Res call({double value, CurrencySign sign});

  @override
  $CurrencySignCopyWith<$Res> get sign;
}

class __$CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(_Currency _value, $Res Function(_Currency) _then)
      : super(_value, (v) => _then(v as _Currency));

  @override
  _Currency get _value => super._value as _Currency;

  @override
  $Res call({
    Object value = freezed,
    Object sign = freezed,
  }) {
    return _then(_Currency(
      value: value == freezed ? _value.value : value as double,
      sign: sign == freezed ? _value.sign : sign as CurrencySign,
    ));
  }
}

class _$_Currency extends _Currency {
  const _$_Currency({@required this.value, @required this.sign})
      : assert(value != null),
        assert(sign != null),
        super._();

  @override
  final double value;
  @override
  final CurrencySign sign;

  @override
  String toString() {
    return 'Currency(value: $value, sign: $sign)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Currency &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.sign, sign) ||
                const DeepCollectionEquality().equals(other.sign, sign)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(sign);

  @override
  _$CurrencyCopyWith<_Currency> get copyWith =>
      __$CurrencyCopyWithImpl<_Currency>(this, _$identity);
}

abstract class _Currency extends Currency {
  const _Currency._() : super._();
  const factory _Currency(
      {@required double value, @required CurrencySign sign}) = _$_Currency;

  @override
  double get value;
  @override
  CurrencySign get sign;
  @override
  _$CurrencyCopyWith<_Currency> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'currency_sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurrencySignTearOff {
  const _$CurrencySignTearOff();

  _CurrencySign call(String sign) {
    return _CurrencySign(
      sign,
    );
  }
}

// ignore: unused_element
const $CurrencySign = _$CurrencySignTearOff();

mixin _$CurrencySign {
  String get sign;

  $CurrencySignCopyWith<CurrencySign> get copyWith;
}

abstract class $CurrencySignCopyWith<$Res> {
  factory $CurrencySignCopyWith(
          CurrencySign value, $Res Function(CurrencySign) then) =
      _$CurrencySignCopyWithImpl<$Res>;
  $Res call({String sign});
}

class _$CurrencySignCopyWithImpl<$Res> implements $CurrencySignCopyWith<$Res> {
  _$CurrencySignCopyWithImpl(this._value, this._then);

  final CurrencySign _value;
  // ignore: unused_field
  final $Res Function(CurrencySign) _then;

  @override
  $Res call({
    Object sign = freezed,
  }) {
    return _then(_value.copyWith(
      sign: sign == freezed ? _value.sign : sign as String,
    ));
  }
}

abstract class _$CurrencySignCopyWith<$Res>
    implements $CurrencySignCopyWith<$Res> {
  factory _$CurrencySignCopyWith(
          _CurrencySign value, $Res Function(_CurrencySign) then) =
      __$CurrencySignCopyWithImpl<$Res>;
  @override
  $Res call({String sign});
}

class __$CurrencySignCopyWithImpl<$Res> extends _$CurrencySignCopyWithImpl<$Res>
    implements _$CurrencySignCopyWith<$Res> {
  __$CurrencySignCopyWithImpl(
      _CurrencySign _value, $Res Function(_CurrencySign) _then)
      : super(_value, (v) => _then(v as _CurrencySign));

  @override
  _CurrencySign get _value => super._value as _CurrencySign;

  @override
  $Res call({
    Object sign = freezed,
  }) {
    return _then(_CurrencySign(
      sign == freezed ? _value.sign : sign as String,
    ));
  }
}

class _$_CurrencySign with DiagnosticableTreeMixin implements _CurrencySign {
  const _$_CurrencySign(this.sign) : assert(sign != null);

  @override
  final String sign;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencySign(sign: $sign)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencySign'))
      ..add(DiagnosticsProperty('sign', sign));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrencySign &&
            (identical(other.sign, sign) ||
                const DeepCollectionEquality().equals(other.sign, sign)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sign);

  @override
  _$CurrencySignCopyWith<_CurrencySign> get copyWith =>
      __$CurrencySignCopyWithImpl<_CurrencySign>(this, _$identity);
}

abstract class _CurrencySign implements CurrencySign {
  const factory _CurrencySign(String sign) = _$_CurrencySign;

  @override
  String get sign;
  @override
  _$CurrencySignCopyWith<_CurrencySign> get copyWith;
}

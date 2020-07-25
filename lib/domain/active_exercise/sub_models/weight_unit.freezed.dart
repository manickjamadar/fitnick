// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'weight_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WeightUnitTearOff {
  const _$WeightUnitTearOff();

  _Kg kg() {
    return const _Kg();
  }

  _Lbs lbs() {
    return const _Lbs();
  }
}

// ignore: unused_element
const $WeightUnit = _$WeightUnitTearOff();

mixin _$WeightUnit {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result kg(),
    @required Result lbs(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result kg(),
    Result lbs(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result kg(_Kg value),
    @required Result lbs(_Lbs value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result kg(_Kg value),
    Result lbs(_Lbs value),
    @required Result orElse(),
  });
}

abstract class $WeightUnitCopyWith<$Res> {
  factory $WeightUnitCopyWith(
          WeightUnit value, $Res Function(WeightUnit) then) =
      _$WeightUnitCopyWithImpl<$Res>;
}

class _$WeightUnitCopyWithImpl<$Res> implements $WeightUnitCopyWith<$Res> {
  _$WeightUnitCopyWithImpl(this._value, this._then);

  final WeightUnit _value;
  // ignore: unused_field
  final $Res Function(WeightUnit) _then;
}

abstract class _$KgCopyWith<$Res> {
  factory _$KgCopyWith(_Kg value, $Res Function(_Kg) then) =
      __$KgCopyWithImpl<$Res>;
}

class __$KgCopyWithImpl<$Res> extends _$WeightUnitCopyWithImpl<$Res>
    implements _$KgCopyWith<$Res> {
  __$KgCopyWithImpl(_Kg _value, $Res Function(_Kg) _then)
      : super(_value, (v) => _then(v as _Kg));

  @override
  _Kg get _value => super._value as _Kg;
}

class _$_Kg implements _Kg {
  const _$_Kg();

  @override
  String toString() {
    return 'WeightUnit.kg()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Kg);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result kg(),
    @required Result lbs(),
  }) {
    assert(kg != null);
    assert(lbs != null);
    return kg();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result kg(),
    Result lbs(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (kg != null) {
      return kg();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result kg(_Kg value),
    @required Result lbs(_Lbs value),
  }) {
    assert(kg != null);
    assert(lbs != null);
    return kg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result kg(_Kg value),
    Result lbs(_Lbs value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (kg != null) {
      return kg(this);
    }
    return orElse();
  }
}

abstract class _Kg implements WeightUnit {
  const factory _Kg() = _$_Kg;
}

abstract class _$LbsCopyWith<$Res> {
  factory _$LbsCopyWith(_Lbs value, $Res Function(_Lbs) then) =
      __$LbsCopyWithImpl<$Res>;
}

class __$LbsCopyWithImpl<$Res> extends _$WeightUnitCopyWithImpl<$Res>
    implements _$LbsCopyWith<$Res> {
  __$LbsCopyWithImpl(_Lbs _value, $Res Function(_Lbs) _then)
      : super(_value, (v) => _then(v as _Lbs));

  @override
  _Lbs get _value => super._value as _Lbs;
}

class _$_Lbs implements _Lbs {
  const _$_Lbs();

  @override
  String toString() {
    return 'WeightUnit.lbs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Lbs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result kg(),
    @required Result lbs(),
  }) {
    assert(kg != null);
    assert(lbs != null);
    return lbs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result kg(),
    Result lbs(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lbs != null) {
      return lbs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result kg(_Kg value),
    @required Result lbs(_Lbs value),
  }) {
    assert(kg != null);
    assert(lbs != null);
    return lbs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result kg(_Kg value),
    Result lbs(_Lbs value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lbs != null) {
      return lbs(this);
    }
    return orElse();
  }
}

abstract class _Lbs implements WeightUnit {
  const factory _Lbs() = _$_Lbs;
}

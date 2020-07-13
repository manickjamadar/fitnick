// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_item_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseItemTypeTearOff {
  const _$ExerciseItemTypeTearOff();

  _ExerciseTypeNormal normal() {
    return const _ExerciseTypeNormal();
  }

  _ExerciseTypeRemoval removable({@required void Function(Exercise) onRemove}) {
    return _ExerciseTypeRemoval(
      onRemove: onRemove,
    );
  }

  _ExerciseTypeSelectable selectable(
      {@required void Function(bool) onSelect, bool selected = false}) {
    return _ExerciseTypeSelectable(
      onSelect: onSelect,
      selected: selected,
    );
  }
}

// ignore: unused_element
const $ExerciseItemType = _$ExerciseItemTypeTearOff();

mixin _$ExerciseItemType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result removable(void Function(Exercise) onRemove),
    @required Result selectable(void Function(bool) onSelect, bool selected),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result removable(void Function(Exercise) onRemove),
    Result selectable(void Function(bool) onSelect, bool selected),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(_ExerciseTypeNormal value),
    @required Result removable(_ExerciseTypeRemoval value),
    @required Result selectable(_ExerciseTypeSelectable value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(_ExerciseTypeNormal value),
    Result removable(_ExerciseTypeRemoval value),
    Result selectable(_ExerciseTypeSelectable value),
    @required Result orElse(),
  });
}

abstract class $ExerciseItemTypeCopyWith<$Res> {
  factory $ExerciseItemTypeCopyWith(
          ExerciseItemType value, $Res Function(ExerciseItemType) then) =
      _$ExerciseItemTypeCopyWithImpl<$Res>;
}

class _$ExerciseItemTypeCopyWithImpl<$Res>
    implements $ExerciseItemTypeCopyWith<$Res> {
  _$ExerciseItemTypeCopyWithImpl(this._value, this._then);

  final ExerciseItemType _value;
  // ignore: unused_field
  final $Res Function(ExerciseItemType) _then;
}

abstract class _$ExerciseTypeNormalCopyWith<$Res> {
  factory _$ExerciseTypeNormalCopyWith(
          _ExerciseTypeNormal value, $Res Function(_ExerciseTypeNormal) then) =
      __$ExerciseTypeNormalCopyWithImpl<$Res>;
}

class __$ExerciseTypeNormalCopyWithImpl<$Res>
    extends _$ExerciseItemTypeCopyWithImpl<$Res>
    implements _$ExerciseTypeNormalCopyWith<$Res> {
  __$ExerciseTypeNormalCopyWithImpl(
      _ExerciseTypeNormal _value, $Res Function(_ExerciseTypeNormal) _then)
      : super(_value, (v) => _then(v as _ExerciseTypeNormal));

  @override
  _ExerciseTypeNormal get _value => super._value as _ExerciseTypeNormal;
}

class _$_ExerciseTypeNormal implements _ExerciseTypeNormal {
  const _$_ExerciseTypeNormal();

  @override
  String toString() {
    return 'ExerciseItemType.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseTypeNormal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result removable(void Function(Exercise) onRemove),
    @required Result selectable(void Function(bool) onSelect, bool selected),
  }) {
    assert(normal != null);
    assert(removable != null);
    assert(selectable != null);
    return normal();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result removable(void Function(Exercise) onRemove),
    Result selectable(void Function(bool) onSelect, bool selected),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(_ExerciseTypeNormal value),
    @required Result removable(_ExerciseTypeRemoval value),
    @required Result selectable(_ExerciseTypeSelectable value),
  }) {
    assert(normal != null);
    assert(removable != null);
    assert(selectable != null);
    return normal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(_ExerciseTypeNormal value),
    Result removable(_ExerciseTypeRemoval value),
    Result selectable(_ExerciseTypeSelectable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _ExerciseTypeNormal implements ExerciseItemType {
  const factory _ExerciseTypeNormal() = _$_ExerciseTypeNormal;
}

abstract class _$ExerciseTypeRemovalCopyWith<$Res> {
  factory _$ExerciseTypeRemovalCopyWith(_ExerciseTypeRemoval value,
          $Res Function(_ExerciseTypeRemoval) then) =
      __$ExerciseTypeRemovalCopyWithImpl<$Res>;
  $Res call({void Function(Exercise) onRemove});
}

class __$ExerciseTypeRemovalCopyWithImpl<$Res>
    extends _$ExerciseItemTypeCopyWithImpl<$Res>
    implements _$ExerciseTypeRemovalCopyWith<$Res> {
  __$ExerciseTypeRemovalCopyWithImpl(
      _ExerciseTypeRemoval _value, $Res Function(_ExerciseTypeRemoval) _then)
      : super(_value, (v) => _then(v as _ExerciseTypeRemoval));

  @override
  _ExerciseTypeRemoval get _value => super._value as _ExerciseTypeRemoval;

  @override
  $Res call({
    Object onRemove = freezed,
  }) {
    return _then(_ExerciseTypeRemoval(
      onRemove: onRemove == freezed
          ? _value.onRemove
          : onRemove as void Function(Exercise),
    ));
  }
}

class _$_ExerciseTypeRemoval implements _ExerciseTypeRemoval {
  const _$_ExerciseTypeRemoval({@required this.onRemove})
      : assert(onRemove != null);

  @override
  final void Function(Exercise) onRemove;

  @override
  String toString() {
    return 'ExerciseItemType.removable(onRemove: $onRemove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseTypeRemoval &&
            (identical(other.onRemove, onRemove) ||
                const DeepCollectionEquality()
                    .equals(other.onRemove, onRemove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onRemove);

  @override
  _$ExerciseTypeRemovalCopyWith<_ExerciseTypeRemoval> get copyWith =>
      __$ExerciseTypeRemovalCopyWithImpl<_ExerciseTypeRemoval>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result removable(void Function(Exercise) onRemove),
    @required Result selectable(void Function(bool) onSelect, bool selected),
  }) {
    assert(normal != null);
    assert(removable != null);
    assert(selectable != null);
    return removable(onRemove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result removable(void Function(Exercise) onRemove),
    Result selectable(void Function(bool) onSelect, bool selected),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removable != null) {
      return removable(onRemove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(_ExerciseTypeNormal value),
    @required Result removable(_ExerciseTypeRemoval value),
    @required Result selectable(_ExerciseTypeSelectable value),
  }) {
    assert(normal != null);
    assert(removable != null);
    assert(selectable != null);
    return removable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(_ExerciseTypeNormal value),
    Result removable(_ExerciseTypeRemoval value),
    Result selectable(_ExerciseTypeSelectable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removable != null) {
      return removable(this);
    }
    return orElse();
  }
}

abstract class _ExerciseTypeRemoval implements ExerciseItemType {
  const factory _ExerciseTypeRemoval(
      {@required void Function(Exercise) onRemove}) = _$_ExerciseTypeRemoval;

  void Function(Exercise) get onRemove;
  _$ExerciseTypeRemovalCopyWith<_ExerciseTypeRemoval> get copyWith;
}

abstract class _$ExerciseTypeSelectableCopyWith<$Res> {
  factory _$ExerciseTypeSelectableCopyWith(_ExerciseTypeSelectable value,
          $Res Function(_ExerciseTypeSelectable) then) =
      __$ExerciseTypeSelectableCopyWithImpl<$Res>;
  $Res call({void Function(bool) onSelect, bool selected});
}

class __$ExerciseTypeSelectableCopyWithImpl<$Res>
    extends _$ExerciseItemTypeCopyWithImpl<$Res>
    implements _$ExerciseTypeSelectableCopyWith<$Res> {
  __$ExerciseTypeSelectableCopyWithImpl(_ExerciseTypeSelectable _value,
      $Res Function(_ExerciseTypeSelectable) _then)
      : super(_value, (v) => _then(v as _ExerciseTypeSelectable));

  @override
  _ExerciseTypeSelectable get _value => super._value as _ExerciseTypeSelectable;

  @override
  $Res call({
    Object onSelect = freezed,
    Object selected = freezed,
  }) {
    return _then(_ExerciseTypeSelectable(
      onSelect: onSelect == freezed
          ? _value.onSelect
          : onSelect as void Function(bool),
      selected: selected == freezed ? _value.selected : selected as bool,
    ));
  }
}

class _$_ExerciseTypeSelectable implements _ExerciseTypeSelectable {
  const _$_ExerciseTypeSelectable(
      {@required this.onSelect, this.selected = false})
      : assert(onSelect != null),
        assert(selected != null);

  @override
  final void Function(bool) onSelect;
  @JsonKey(defaultValue: false)
  @override
  final bool selected;

  @override
  String toString() {
    return 'ExerciseItemType.selectable(onSelect: $onSelect, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseTypeSelectable &&
            (identical(other.onSelect, onSelect) ||
                const DeepCollectionEquality()
                    .equals(other.onSelect, onSelect)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(onSelect) ^
      const DeepCollectionEquality().hash(selected);

  @override
  _$ExerciseTypeSelectableCopyWith<_ExerciseTypeSelectable> get copyWith =>
      __$ExerciseTypeSelectableCopyWithImpl<_ExerciseTypeSelectable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result normal(),
    @required Result removable(void Function(Exercise) onRemove),
    @required Result selectable(void Function(bool) onSelect, bool selected),
  }) {
    assert(normal != null);
    assert(removable != null);
    assert(selectable != null);
    return selectable(onSelect, selected);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result normal(),
    Result removable(void Function(Exercise) onRemove),
    Result selectable(void Function(bool) onSelect, bool selected),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectable != null) {
      return selectable(onSelect, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result normal(_ExerciseTypeNormal value),
    @required Result removable(_ExerciseTypeRemoval value),
    @required Result selectable(_ExerciseTypeSelectable value),
  }) {
    assert(normal != null);
    assert(removable != null);
    assert(selectable != null);
    return selectable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result normal(_ExerciseTypeNormal value),
    Result removable(_ExerciseTypeRemoval value),
    Result selectable(_ExerciseTypeSelectable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectable != null) {
      return selectable(this);
    }
    return orElse();
  }
}

abstract class _ExerciseTypeSelectable implements ExerciseItemType {
  const factory _ExerciseTypeSelectable(
      {@required void Function(bool) onSelect,
      bool selected}) = _$_ExerciseTypeSelectable;

  void Function(bool) get onSelect;
  bool get selected;
  _$ExerciseTypeSelectableCopyWith<_ExerciseTypeSelectable> get copyWith;
}

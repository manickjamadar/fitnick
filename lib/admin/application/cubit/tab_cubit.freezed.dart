// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TabStateTearOff {
  const _$TabStateTearOff();

  _TabState call({@required List<Tab> tabs, @required int currentTabIndex}) {
    return _TabState(
      tabs: tabs,
      currentTabIndex: currentTabIndex,
    );
  }
}

// ignore: unused_element
const $TabState = _$TabStateTearOff();

mixin _$TabState {
  List<Tab> get tabs;
  int get currentTabIndex;

  $TabStateCopyWith<TabState> get copyWith;
}

abstract class $TabStateCopyWith<$Res> {
  factory $TabStateCopyWith(TabState value, $Res Function(TabState) then) =
      _$TabStateCopyWithImpl<$Res>;
  $Res call({List<Tab> tabs, int currentTabIndex});
}

class _$TabStateCopyWithImpl<$Res> implements $TabStateCopyWith<$Res> {
  _$TabStateCopyWithImpl(this._value, this._then);

  final TabState _value;
  // ignore: unused_field
  final $Res Function(TabState) _then;

  @override
  $Res call({
    Object tabs = freezed,
    Object currentTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      tabs: tabs == freezed ? _value.tabs : tabs as List<Tab>,
      currentTabIndex: currentTabIndex == freezed
          ? _value.currentTabIndex
          : currentTabIndex as int,
    ));
  }
}

abstract class _$TabStateCopyWith<$Res> implements $TabStateCopyWith<$Res> {
  factory _$TabStateCopyWith(_TabState value, $Res Function(_TabState) then) =
      __$TabStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Tab> tabs, int currentTabIndex});
}

class __$TabStateCopyWithImpl<$Res> extends _$TabStateCopyWithImpl<$Res>
    implements _$TabStateCopyWith<$Res> {
  __$TabStateCopyWithImpl(_TabState _value, $Res Function(_TabState) _then)
      : super(_value, (v) => _then(v as _TabState));

  @override
  _TabState get _value => super._value as _TabState;

  @override
  $Res call({
    Object tabs = freezed,
    Object currentTabIndex = freezed,
  }) {
    return _then(_TabState(
      tabs: tabs == freezed ? _value.tabs : tabs as List<Tab>,
      currentTabIndex: currentTabIndex == freezed
          ? _value.currentTabIndex
          : currentTabIndex as int,
    ));
  }
}

class _$_TabState extends _TabState {
  const _$_TabState({@required this.tabs, @required this.currentTabIndex})
      : assert(tabs != null),
        assert(currentTabIndex != null),
        super._();

  @override
  final List<Tab> tabs;
  @override
  final int currentTabIndex;

  @override
  String toString() {
    return 'TabState(tabs: $tabs, currentTabIndex: $currentTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabState &&
            (identical(other.tabs, tabs) ||
                const DeepCollectionEquality().equals(other.tabs, tabs)) &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentTabIndex, currentTabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tabs) ^
      const DeepCollectionEquality().hash(currentTabIndex);

  @override
  _$TabStateCopyWith<_TabState> get copyWith =>
      __$TabStateCopyWithImpl<_TabState>(this, _$identity);
}

abstract class _TabState extends TabState {
  const _TabState._() : super._();
  const factory _TabState(
      {@required List<Tab> tabs, @required int currentTabIndex}) = _$_TabState;

  @override
  List<Tab> get tabs;
  @override
  int get currentTabIndex;
  @override
  _$TabStateCopyWith<_TabState> get copyWith;
}

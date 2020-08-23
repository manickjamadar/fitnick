// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TabStateTearOff {
  const _$TabStateTearOff();

  _TabState call(
      {@required List<PageTab> tabs,
      @required int currentTabIndex,
      @required PageController pageController}) {
    return _TabState(
      tabs: tabs,
      currentTabIndex: currentTabIndex,
      pageController: pageController,
    );
  }
}

// ignore: unused_element
const $TabState = _$TabStateTearOff();

mixin _$TabState {
  List<PageTab> get tabs;
  int get currentTabIndex;
  PageController get pageController;

  $TabStateCopyWith<TabState> get copyWith;
}

abstract class $TabStateCopyWith<$Res> {
  factory $TabStateCopyWith(TabState value, $Res Function(TabState) then) =
      _$TabStateCopyWithImpl<$Res>;
  $Res call(
      {List<PageTab> tabs, int currentTabIndex, PageController pageController});
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
    Object pageController = freezed,
  }) {
    return _then(_value.copyWith(
      tabs: tabs == freezed ? _value.tabs : tabs as List<PageTab>,
      currentTabIndex: currentTabIndex == freezed
          ? _value.currentTabIndex
          : currentTabIndex as int,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController as PageController,
    ));
  }
}

abstract class _$TabStateCopyWith<$Res> implements $TabStateCopyWith<$Res> {
  factory _$TabStateCopyWith(_TabState value, $Res Function(_TabState) then) =
      __$TabStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PageTab> tabs, int currentTabIndex, PageController pageController});
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
    Object pageController = freezed,
  }) {
    return _then(_TabState(
      tabs: tabs == freezed ? _value.tabs : tabs as List<PageTab>,
      currentTabIndex: currentTabIndex == freezed
          ? _value.currentTabIndex
          : currentTabIndex as int,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController as PageController,
    ));
  }
}

class _$_TabState extends _TabState with DiagnosticableTreeMixin {
  const _$_TabState(
      {@required this.tabs,
      @required this.currentTabIndex,
      @required this.pageController})
      : assert(tabs != null),
        assert(currentTabIndex != null),
        assert(pageController != null),
        super._();

  @override
  final List<PageTab> tabs;
  @override
  final int currentTabIndex;
  @override
  final PageController pageController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabState(tabs: $tabs, currentTabIndex: $currentTabIndex, pageController: $pageController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabState'))
      ..add(DiagnosticsProperty('tabs', tabs))
      ..add(DiagnosticsProperty('currentTabIndex', currentTabIndex))
      ..add(DiagnosticsProperty('pageController', pageController));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabState &&
            (identical(other.tabs, tabs) ||
                const DeepCollectionEquality().equals(other.tabs, tabs)) &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentTabIndex, currentTabIndex)) &&
            (identical(other.pageController, pageController) ||
                const DeepCollectionEquality()
                    .equals(other.pageController, pageController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tabs) ^
      const DeepCollectionEquality().hash(currentTabIndex) ^
      const DeepCollectionEquality().hash(pageController);

  @override
  _$TabStateCopyWith<_TabState> get copyWith =>
      __$TabStateCopyWithImpl<_TabState>(this, _$identity);
}

abstract class _TabState extends TabState {
  const _TabState._() : super._();
  const factory _TabState(
      {@required List<PageTab> tabs,
      @required int currentTabIndex,
      @required PageController pageController}) = _$_TabState;

  @override
  List<PageTab> get tabs;
  @override
  int get currentTabIndex;
  @override
  PageController get pageController;
  @override
  _$TabStateCopyWith<_TabState> get copyWith;
}

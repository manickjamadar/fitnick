// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'page_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PageTabTearOff {
  const _$PageTabTearOff();

  _PageTab call(
      {@required IconData iconData,
      @required String title,
      bool isActive = false}) {
    return _PageTab(
      iconData: iconData,
      title: title,
      isActive: isActive,
    );
  }
}

// ignore: unused_element
const $PageTab = _$PageTabTearOff();

mixin _$PageTab {
  IconData get iconData;
  String get title;
  bool get isActive;

  $PageTabCopyWith<PageTab> get copyWith;
}

abstract class $PageTabCopyWith<$Res> {
  factory $PageTabCopyWith(PageTab value, $Res Function(PageTab) then) =
      _$PageTabCopyWithImpl<$Res>;
  $Res call({IconData iconData, String title, bool isActive});
}

class _$PageTabCopyWithImpl<$Res> implements $PageTabCopyWith<$Res> {
  _$PageTabCopyWithImpl(this._value, this._then);

  final PageTab _value;
  // ignore: unused_field
  final $Res Function(PageTab) _then;

  @override
  $Res call({
    Object iconData = freezed,
    Object title = freezed,
    Object isActive = freezed,
  }) {
    return _then(_value.copyWith(
      iconData: iconData == freezed ? _value.iconData : iconData as IconData,
      title: title == freezed ? _value.title : title as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
    ));
  }
}

abstract class _$PageTabCopyWith<$Res> implements $PageTabCopyWith<$Res> {
  factory _$PageTabCopyWith(_PageTab value, $Res Function(_PageTab) then) =
      __$PageTabCopyWithImpl<$Res>;
  @override
  $Res call({IconData iconData, String title, bool isActive});
}

class __$PageTabCopyWithImpl<$Res> extends _$PageTabCopyWithImpl<$Res>
    implements _$PageTabCopyWith<$Res> {
  __$PageTabCopyWithImpl(_PageTab _value, $Res Function(_PageTab) _then)
      : super(_value, (v) => _then(v as _PageTab));

  @override
  _PageTab get _value => super._value as _PageTab;

  @override
  $Res call({
    Object iconData = freezed,
    Object title = freezed,
    Object isActive = freezed,
  }) {
    return _then(_PageTab(
      iconData: iconData == freezed ? _value.iconData : iconData as IconData,
      title: title == freezed ? _value.title : title as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
    ));
  }
}

class _$_PageTab with DiagnosticableTreeMixin implements _PageTab {
  const _$_PageTab(
      {@required this.iconData, @required this.title, this.isActive = false})
      : assert(iconData != null),
        assert(title != null),
        assert(isActive != null);

  @override
  final IconData iconData;
  @override
  final String title;
  @JsonKey(defaultValue: false)
  @override
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageTab(iconData: $iconData, title: $title, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageTab'))
      ..add(DiagnosticsProperty('iconData', iconData))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageTab &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iconData) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isActive);

  @override
  _$PageTabCopyWith<_PageTab> get copyWith =>
      __$PageTabCopyWithImpl<_PageTab>(this, _$identity);
}

abstract class _PageTab implements PageTab {
  const factory _PageTab(
      {@required IconData iconData,
      @required String title,
      bool isActive}) = _$_PageTab;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  bool get isActive;
  @override
  _$PageTabCopyWith<_PageTab> get copyWith;
}

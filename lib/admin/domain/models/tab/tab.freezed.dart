// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TabTearOff {
  const _$TabTearOff();

  _Tab call({@required String title, IconData icon}) {
    return _Tab(
      title: title,
      icon: icon,
    );
  }
}

// ignore: unused_element
const $Tab = _$TabTearOff();

mixin _$Tab {
  String get title;
  IconData get icon;

  $TabCopyWith<Tab> get copyWith;
}

abstract class $TabCopyWith<$Res> {
  factory $TabCopyWith(Tab value, $Res Function(Tab) then) =
      _$TabCopyWithImpl<$Res>;
  $Res call({String title, IconData icon});
}

class _$TabCopyWithImpl<$Res> implements $TabCopyWith<$Res> {
  _$TabCopyWithImpl(this._value, this._then);

  final Tab _value;
  // ignore: unused_field
  final $Res Function(Tab) _then;

  @override
  $Res call({
    Object title = freezed,
    Object icon = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as IconData,
    ));
  }
}

abstract class _$TabCopyWith<$Res> implements $TabCopyWith<$Res> {
  factory _$TabCopyWith(_Tab value, $Res Function(_Tab) then) =
      __$TabCopyWithImpl<$Res>;
  @override
  $Res call({String title, IconData icon});
}

class __$TabCopyWithImpl<$Res> extends _$TabCopyWithImpl<$Res>
    implements _$TabCopyWith<$Res> {
  __$TabCopyWithImpl(_Tab _value, $Res Function(_Tab) _then)
      : super(_value, (v) => _then(v as _Tab));

  @override
  _Tab get _value => super._value as _Tab;

  @override
  $Res call({
    Object title = freezed,
    Object icon = freezed,
  }) {
    return _then(_Tab(
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as IconData,
    ));
  }
}

class _$_Tab with DiagnosticableTreeMixin implements _Tab {
  const _$_Tab({@required this.title, this.icon}) : assert(title != null);

  @override
  final String title;
  @override
  final IconData icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tab(title: $title, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tab'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tab &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon);

  @override
  _$TabCopyWith<_Tab> get copyWith =>
      __$TabCopyWithImpl<_Tab>(this, _$identity);
}

abstract class _Tab implements Tab {
  const factory _Tab({@required String title, IconData icon}) = _$_Tab;

  @override
  String get title;
  @override
  IconData get icon;
  @override
  _$TabCopyWith<_Tab> get copyWith;
}

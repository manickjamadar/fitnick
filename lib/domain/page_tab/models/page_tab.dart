import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'page_tab.freezed.dart';

@freezed
abstract class PageTab with _$PageTab {
  const factory PageTab(
      {@required IconData iconData,
      @required String title,
      @Default(false) bool isActive}) = _PageTab;
}

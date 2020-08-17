import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab.freezed.dart';

@freezed
abstract class Tab with _$Tab {
  const factory Tab({@required String title, IconData icon}) = _Tab;
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "currency_sign.freezed.dart";

@freezed
abstract class CurrencySign with _$CurrencySign {
  const factory CurrencySign(String sign) = _CurrencySign;

  static CurrencySign rupee = CurrencySign("Rs");
  static CurrencySign dollar = CurrencySign("\$");
}

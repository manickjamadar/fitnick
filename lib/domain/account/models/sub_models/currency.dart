import 'package:freezed_annotation/freezed_annotation.dart';

import 'currency_sign.dart';
part 'currency.freezed.dart';

@freezed
abstract class Currency implements _$Currency {
  const Currency._();
  const factory Currency(
      {@required double value, @required CurrencySign sign}) = _Currency;
  factory Currency.rupee(double value) =>
      Currency(sign: CurrencySign.rupee, value: value);
  factory Currency.dollar(double value) =>
      Currency(sign: CurrencySign.dollar, value: value);
}

import 'package:fitnick/domain/account/models/sub_models/coin.dart';
import 'package:fitnick/domain/account/models/sub_models/currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "offer.freezed.dart";

@freezed
abstract class Offer with _$Offer {
  const factory Offer({@required Coin coin, @required Currency price}) = _Offer;
}

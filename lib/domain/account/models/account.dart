import 'package:fitnick/domain/account/models/sub_models/coin.dart';
import 'package:fitnick/domain/account/models/sub_models/currency.dart';
import 'package:fitnick/domain/account/models/sub_models/offer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'account.freezed.dart';

@freezed
abstract class Account implements _$Account {
  const Account._();
  const factory Account({@required Coin balance}) = _Account;

  Account addBalance(Coin coin) {
    return Account(balance: balance.add(coin));
  }

  Account deductBalance(Coin coin) {
    return Account(balance: balance.deduct(coin));
  }

  static List<Offer> offers = [
    Offer(coin: Coin(500), price: Currency.rupee(50)),
    Offer(coin: Coin(1000), price: Currency.rupee(80)),
    Offer(coin: Coin(5000), price: Currency.rupee(300)),
  ];
}

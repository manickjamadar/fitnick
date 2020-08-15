import 'package:equatable/equatable.dart';

class Coin extends Equatable {
  final int value;
  const Coin._(this.value);

  factory Coin(int amount) {
    return Coin._(amount < 0 ? 0 : amount);
  }

  Coin add(Coin coin) {
    return Coin(value + coin.value);
  }

  Coin deduct(Coin coin) {
    return Coin(value - coin.value);
  }

  @override
  List<Object> get props => [value];
}

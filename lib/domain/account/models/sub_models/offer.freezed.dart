// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OfferTearOff {
  const _$OfferTearOff();

  _Offer call({@required Coin coin, @required Currency price}) {
    return _Offer(
      coin: coin,
      price: price,
    );
  }
}

// ignore: unused_element
const $Offer = _$OfferTearOff();

mixin _$Offer {
  Coin get coin;
  Currency get price;

  $OfferCopyWith<Offer> get copyWith;
}

abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res>;
  $Res call({Coin coin, Currency price});

  $CurrencyCopyWith<$Res> get price;
}

class _$OfferCopyWithImpl<$Res> implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  final Offer _value;
  // ignore: unused_field
  final $Res Function(Offer) _then;

  @override
  $Res call({
    Object coin = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      coin: coin == freezed ? _value.coin : coin as Coin,
      price: price == freezed ? _value.price : price as Currency,
    ));
  }

  @override
  $CurrencyCopyWith<$Res> get price {
    if (_value.price == null) {
      return null;
    }
    return $CurrencyCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

abstract class _$OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$OfferCopyWith(_Offer value, $Res Function(_Offer) then) =
      __$OfferCopyWithImpl<$Res>;
  @override
  $Res call({Coin coin, Currency price});

  @override
  $CurrencyCopyWith<$Res> get price;
}

class __$OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res>
    implements _$OfferCopyWith<$Res> {
  __$OfferCopyWithImpl(_Offer _value, $Res Function(_Offer) _then)
      : super(_value, (v) => _then(v as _Offer));

  @override
  _Offer get _value => super._value as _Offer;

  @override
  $Res call({
    Object coin = freezed,
    Object price = freezed,
  }) {
    return _then(_Offer(
      coin: coin == freezed ? _value.coin : coin as Coin,
      price: price == freezed ? _value.price : price as Currency,
    ));
  }
}

class _$_Offer implements _Offer {
  const _$_Offer({@required this.coin, @required this.price})
      : assert(coin != null),
        assert(price != null);

  @override
  final Coin coin;
  @override
  final Currency price;

  @override
  String toString() {
    return 'Offer(coin: $coin, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Offer &&
            (identical(other.coin, coin) ||
                const DeepCollectionEquality().equals(other.coin, coin)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coin) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$OfferCopyWith<_Offer> get copyWith =>
      __$OfferCopyWithImpl<_Offer>(this, _$identity);
}

abstract class _Offer implements Offer {
  const factory _Offer({@required Coin coin, @required Currency price}) =
      _$_Offer;

  @override
  Coin get coin;
  @override
  Currency get price;
  @override
  _$OfferCopyWith<_Offer> get copyWith;
}

part of 'account_manager_cubit.dart';

@freezed
abstract class AccountManagerState with _$AccountManagerState {
  const factory AccountManagerState.initial() = _AccountManagerInitial;
  const factory AccountManagerState.purchaseSuccessful(Offer offer) =
      _AccountManagerPurchaseSuccessful;
  const factory AccountManagerState.purchaseUnSuccessful(Offer offer) =
      _AccountManagerPurchaseUnSuccessful;
  const factory AccountManagerState.spendSuccessFul(Coin coin) =
      _AccountManagerStateSpendSuccessful;
  const factory AccountManagerState.inSufficientBalance() =
      _AccountManagerInsufficientBalance;
}

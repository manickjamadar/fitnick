import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/account/models/account.dart';
import 'package:fitnick/domain/account/models/sub_models/coin.dart';
import 'package:fitnick/domain/account/models/sub_models/offer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "../account_hub/account_hub_cubit.dart";
part 'account_manager_state.dart';
part 'account_manager_cubit.freezed.dart';

class AccountManagerCubit extends Cubit<AccountManagerState> {
  final AccountHubCubit accountHubCubit;
  AccountManagerCubit({@required this.accountHubCubit})
      : super(AccountManagerState.initial());

  //events
  void purchase(Offer offer) {
    accountHubCubit.state.when(
        loading: () {},
        loaded: (Account account) {
          final newAccount = account.addBalance(offer.coin);
          accountHubCubit.refreshed(newAccount);
          emit(AccountManagerState.purchaseSuccessful(offer));
        });

    _resetState();
  }

  void spend(Coin coin) {
    accountHubCubit.state.when(
        loading: () {},
        loaded: (Account account) {
          if (account.balance.value < coin.value) {
            emit(AccountManagerState.inSufficientBalance());
          } else {
            final newAccount = account.deductBalance(coin);
            accountHubCubit.refreshed(newAccount);
            emit(AccountManagerState.spendSuccessFul(coin));
          }
        });

    _resetState();
  }

  void _resetState() {
    emit(AccountManagerState.initial());
  }
}

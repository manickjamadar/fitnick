import 'package:bloc/bloc.dart';
import 'package:fitnick/domain/account/models/account.dart';
import 'package:fitnick/domain/account/models/sub_models/coin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_hub_state.dart';
part 'account_hub_cubit.freezed.dart';

class AccountHubCubit extends Cubit<AccountHubState> {
  AccountHubCubit() : super(AccountHubState.loading()) {
    _init();
  }

  //events
  void _init() {
    final defaultAccount = Account(balance: Coin(525));

    emit(AccountHubState.loaded(account: defaultAccount));
  }

  void refreshed(Account account) {
    emit(AccountHubState.loaded(account: account));
  }
}

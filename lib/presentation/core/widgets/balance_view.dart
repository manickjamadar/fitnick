import 'package:fitnick/domain/account/models/account.dart';
import 'package:fitnick/presentation/core/widgets/coin_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../application/account/account_hub/account_hub_cubit.dart";

class BalanceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountHubCubit, AccountHubState>(
      builder: (context, state) {
        return state.when(
            loading: buildAccountLoading, loaded: buildAccountLoaded);
      },
    );
  }

  Widget buildAccountLoaded(Account account) {
    return Chip(
      backgroundColor: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 0),
      label: Row(
        children: [
          CoinIcon(),
          SizedBox(
            width: 4,
          ),
          Text(
            "${account.balance.value} coins",
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget buildAccountLoading() {
    return Chip(
      label: Text("..."),
    );
  }
}

import 'package:fitnick/application/account/account_manager/account_manager_cubit.dart';
import 'package:fitnick/domain/account/models/account.dart';
import 'package:fitnick/domain/account/models/sub_models/offer.dart';
import 'package:fitnick/presentation/core/helpers/show_message.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/balance_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../application/account/account_hub/account_hub_cubit.dart";

class StoreScreen extends StatelessWidget {
  static const routeName = "/store";
  static Widget generateRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => AccountManagerCubit(
            accountHubCubit: BlocProvider.of<AccountHubCubit>(context)),
        child: StoreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Store"),
        ),
        body: StoreView());
  }
}

class StoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountManagerCubit, AccountManagerState>(
      listener: (_, state) {
        state.maybeWhen(
          orElse: () {},
          purchaseSuccessful: (Offer offer) {
            showMessage(context,
                message: "${offer.coin.value} coins purchased successfully",
                type: SuccessMessage());
          },
          purchaseUnSuccessful: (Offer offer) {
            showMessage(context,
                message: "${offer.coin.value} coins purchased failed",
                type: ErrorMessage());
          },
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Balance :"),
              SizedBox(
                width: 20,
              ),
              BalanceView()
            ],
          ),
          ...Account.offers.map((offer) => ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("${offer.coin.value} coins"),
                trailing: GestureDetector(
                  onTap: () => _onBuyButtonPressed(context, offer),
                  child: Chip(
                    backgroundColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.white),
                    label: Text(
                      "${offer.price.localeValue}",
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  void _onBuyButtonPressed(BuildContext context, Offer offer) {
    BlocProvider.of<AccountManagerCubit>(context).purchase(offer);
  }
}

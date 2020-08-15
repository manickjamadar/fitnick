import 'package:fitnick/domain/account/models/account.dart';
import 'package:fitnick/presentation/core/widgets/balance_view.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  static const routeName = "/store";
  static Widget generateRoute() {
    return StoreScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
      ),
      body: Column(
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
                trailing: Chip(
                  backgroundColor: Colors.green,
                  labelStyle: TextStyle(color: Colors.white),
                  label: Text(
                    "${offer.price.localeValue}",
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

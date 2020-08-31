import 'package:fitnick/domain/account/models/sub_models/coin.dart';
import 'package:fitnick/presentation/core/styles.dart';
import 'package:fitnick/presentation/core/widgets/coin_icon.dart';
import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  final String title;
  final Coin coin;
  final String statement;
  final Image image;
  final Widget actions;

  const ConfirmDialog(
      {Key key,
      @required this.title,
      this.coin,
      this.statement,
      this.image,
      @required this.actions})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FitnickTheme.radius)),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: FitnickTextTheme(context).heading,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (coin != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: buildCoinView(context),
            ),
          if (statement != null)
            Text(
              statement,
              style:
                  FitnickTextTheme(context).title.copyWith(color: Colors.green),
            ),
          if (image != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: image,
            ),
          actions
        ],
      ),
    );
  }

  Widget buildCoinView(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CoinIcon(),
        SizedBox(
          width: 10,
        ),
        Text("${coin.value} Coins",
            style:
                FitnickTextTheme(context).button.copyWith(color: Colors.amber))
      ],
    );
  }

  Widget buildGap() {
    return SizedBox(height: 20);
  }
}

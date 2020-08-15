import 'package:flutter/material.dart';

class CoinIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double size = 6;
    return CircleAvatar(
      radius: size * 2,
      backgroundColor: Colors.yellow[700],
      child: Icon(
        Icons.fitness_center,
        color: Colors.white,
        size: size * 2,
      ),
    );
  }
}

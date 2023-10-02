import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Column(
          children: [],
        ),
      ]),
    );
  }
}

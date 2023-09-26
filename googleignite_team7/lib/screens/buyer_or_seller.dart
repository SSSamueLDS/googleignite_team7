import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerOrSeller extends StatelessWidget {
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
          children: [
            _buildLogo(context),
            _buildSecondContainer(context),
          ],
        ),
      ]),
    );
  }
}

@override
Widget _buildLogo(BuildContext context) {
  return Expanded(
    flex: 1,
    child: Center(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Image.asset(
          'assets/images/logo.png',
          height: 250,
          width: 250,
        ),
      ),
    ),
  );
}

@override
Widget _buildSecondContainer(BuildContext context) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(
          top: 32.0, left: 32.0, right: 32.0, bottom: 56.0),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Center(
                  child: Text(
                    "Are you a...",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: 
              Align(
                child: MyFilledButton(
                  label: "Buyer",
                  onPressed: () {
                    Navigator.pushNamed(context, '/'); // Need to update route
                  },
                  fillColor: Colors.black,
                  borderColor: Colors.transparent,
                  fontColor: Colors.white,
                )
              ),
          ),
          Align(
            child: MyFilledButton(
              label: "Farmer",
              onPressed: () {
                Navigator.pushNamed(context, '/'); // Need to update route
              },
              fillColor: Colors.white,
              borderColor: Colors.black,
              fontColor: Colors.black,
            )
          ),
        ]
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class RegisterOrLogin extends StatelessWidget {
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
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: MyFilledButton(
                label: "Login",
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                fillColor: Colors.black,
                borderColor: Colors.transparent,
                fontColor: Colors.white,
              )),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: MyFilledButton(
              label: "Create an Account",
              onPressed: () {
                Navigator.pushNamed(context, '/buyer_or_seller');
              },
              fillColor: Colors.white,
              borderColor: Colors.black,
              fontColor: Colors.black,
            )),
      ]),
    ),
  );
}

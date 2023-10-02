import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class UnderConstruction extends StatelessWidget {
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
            const Text(
                'Under construction 🏗️',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const Text(
                'Something is growing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
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
                label: "Go back",
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                  // change this to where ever you need
                },
                fillColor: Colors.black,
                borderColor: Colors.transparent,
                fontColor: Colors.white,
              )),
        ),
      ]),
    ),
  );
}

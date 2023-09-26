import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
          'assets/images/logo_without_text.png',
          height: 250,
          width: 250,
        ),
      ),
    ),
  );
}
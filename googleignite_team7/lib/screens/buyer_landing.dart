// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class BuyerLanding extends StatelessWidget {
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
        SingleChildScrollView(
            child: Column(
          children: [
            _buildLogo(context),
            _buildSecondContainer(context),
          ],
        )),
      ]),
    );
  }

  @override
  Widget _buildLogo(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 30),
      child: Image.asset(
        'assets/images/logo_without_text.png',
      ),
    );
  }

  @override
  Widget _buildSecondContainer(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 32.0, left: 32.0, right: 32.0, bottom: 56.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(32.0), // Adjust the padding as needed
              child: MyForm(),
            )),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Search store',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}

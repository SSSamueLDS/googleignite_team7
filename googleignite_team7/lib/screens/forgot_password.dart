import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class ForgotPassword extends StatelessWidget {
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
          children: [_buildLogo(context), _buildSecondContainer(context)],
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
        ),
      ),
    ),
  );
}

@override
Widget _buildSecondContainer(BuildContext context) {
  return Expanded(
    flex: 3,
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

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  String _phoneNumber = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Fill in to reset your password",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Phone Number'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Phone Number';
              }
              return null;
            },
            onSaved: (value) {
              _phoneNumber = value!;
            },
          ),
          const Spacer(),
          MyFilledButton(
              label: "Get OTP",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  Navigator.pushNamed(context, '/login');
                }
              },
              fillColor: Colors.black,
              borderColor: Colors.transparent,
              fontColor: Colors.white),
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

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
  String _email = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }
  @override
  void fillPassword(String password) {
    setState(() {
      _password = password;
    });
  }
  @override
  void fillEmail(String email) {
    setState(() {
      _email = email;
    });
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
                  "Sign In",
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
                  "Enter your account details",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          TextFormField(
            onChanged: (value) => fillEmail(value),
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Email';
              }
              return null;
            },
            onSaved: (value) {
              _email = value!;
            },
          ),
          TextFormField(
            onChanged: (value) => fillPassword(value),
            obscureText: passwordVisible,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                    passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(
                    () {
                      passwordVisible = !passwordVisible;
                    },
                  );
                },
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Password';
              }
              return null;
            },
            onSaved: (value) {
              _password = value!;
            },
          ),
          Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot_password');
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Color.fromRGBO(
                            173, 173, 173, 1), // Customize button text color
                        decoration: TextDecoration.underline, // Add underline
                        fontSize: 16.0),
                  ),
                ),
              )),
          const Spacer(),
          MyFilledButton(
              label: "Login",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  if (_email=="buyer@gmail.com" && _password == "buyer") {
                    Navigator.pushNamed(context, '/buyer_landing');
                  } else {
                    Navigator.pushNamed(context, '/farmer_landing');
                  }
                }
              },
              fillColor: Colors.black,
              borderColor: Colors.transparent,
              fontColor: Colors.white),
          Center(
            child: Row(
              children: [
                const Text(
                  'Need an account?',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text(
                    'Create One',
                    style: TextStyle(
                        color: Color.fromRGBO(
                            0, 107, 60, 1), // Customize button text color
                        decoration: TextDecoration.underline, // Add underline
                        fontSize: 16.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

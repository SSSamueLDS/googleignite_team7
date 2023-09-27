import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildLogo(context), Expanded(child: MyForm())],
          ),
        ]),
      ),
    );
  }
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

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  String _fullname = '';
  String _email = '';
  String _phoneNumber = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0, bottom: 50.0),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(32.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "DM Sans",
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
                decoration: InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _fullname = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
              TextFormField(
                obscureText: passwordVisible,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
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
              TextFormField(
                obscureText: passwordVisible,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Re-enter Password',
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
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
                    return 'Please re-enter your Password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: MyFilledButton(
                    label: "Register",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Account Created')),
                        );
                        Navigator.pushNamed(context, '/buyer_landing');
                      }
                    },
                    fillColor: Colors.black,
                    borderColor: Colors.transparent,
                    fontColor: Colors.white),
              ),
              Center(
                child: Row(
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color.fromRGBO(
                                0, 107, 60, 1), // Customize button text color
                            decoration:
                                TextDecoration.underline, // Add underline
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

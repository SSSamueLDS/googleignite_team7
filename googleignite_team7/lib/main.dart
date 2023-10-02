import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:googleignite_team7/screens/farmeraccount.dart';
import 'package:googleignite_team7/screens/productdetail.dart';
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

// Import your custom widget
import '../screens/register_or_login.dart';
import '../screens/buyer_or_seller.dart';
import '../screens/login.dart';
import '../screens/register.dart';
import '../screens/forgot_password.dart';

// Buyer Pages
import '../screens/buyer_landing.dart';
import '../screens/buyer_account.dart';
import '../screens/buyer_select.dart';


import '../screens/buyer_transaction_page.dart';

// Farmer Pages
import '../screens/farmer_landing.dart';
import '../screens/farmer_account.dart';
import '../screens/farmerlisting.dart';
import '../screens/farmersearchlisting.dart';
import '../screens/farmertypesearchlisting.dart';
import '../screens/underconstruction.dart';
import "../screens/upload.dart";
import "../screens/buyer_cart.dart";

void main() {
  final account = jsonEncode({'username': 'kohp', 'password': 'password'});
  final decodedJson = jsonDecode(account);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FarmFinds App',
      theme: ThemeData(fontFamily: "DM Sans"),
      initialRoute: '/', // Specify the initial route (root)
      routes: {
        '/': (context) => MainScreen(), // Define the home page route
        '/register_or_login': (context) => RegisterOrLogin(),
        '/buyer_or_seller': (context) => BuyerOrSeller(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/forgot_password': (context) => ForgotPassword(),
        '/buyer_landing': (context) => BuyerLanding(),
      
        '/buyer_select':
            (context) => BuyerSelect(), // BuyerSelect is a placeholder
        // placeholders
        '/transaction_checkout': (context) => CheckoutPage(),
        '/farmer_landing': (context) => FarmerLanding(),
        '/farmerlisting': (context) => FarmerListingPage(),
        '/farmersearchlisting': (context) => Farmersearchlisting(),
        '/farmertypesearchlisting': (context) => Farmertypesearchlisting(),
        '/404': (context) => UnderConstruction(),
        '/upload': (context) => UploadProduct(),
        '/buyer_cart': (context) => BuyerCart(),
        '/404' : (context) => UnderConstruction(),
        '/farmer_account': (context) => FarmerAccount(),
        '/buyer_account': (context) => BuyerAccount(),
        '/productdetail': (context) => ProductDetail(),
      },
      // home: MainScreen(), // Set the main screen as the initial route.
    );
  }
}

class MainScreen extends StatelessWidget {
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
        const Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              "CONNECTING FARMS TO YOU",
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: MyFilledButton(
              label: "Get Started",
              onPressed: () {
                Navigator.pushNamed(context, '/register_or_login');
              },
              fillColor: Colors.black,
              borderColor: Colors.transparent,
              fontColor: Colors.white,
            )),
      ]),
    ),
  );
}

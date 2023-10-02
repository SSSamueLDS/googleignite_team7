import 'package:flutter/material.dart';

import 'package:googleignite_team7/widgets/AnotherButton.dart';

class FarmerAccountTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          Container(
            width: 430,
            height: 932,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 430,
                    height: 176,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 85,
                  left: 149,
                  child: Text(
                    'Cole Fraser',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      decoration: TextDecoration.none,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 207,
                  left: 36,
                  child: Text(
                    'My Account',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 247,
                  left: 36,
                  child: Text(
                    'Profile Information',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 264,
                  left: 381,
                  child: Image.asset('assets/images/arrow.png'),
                ),
                Positioned(
                  top: 297,
                  left: 36,
                  child: Text(
                    'Customer Subscriptions',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 314,
                  left: 381,
                  child: Image.asset('assets/images/arrow.png'),
                ),
                Positioned(
                  top: 280.5,
                  left: 36.0,
                  child: Transform.rotate(
                    angle: 0,
                    child: Divider(
                      color: Color.fromRGBO(232, 232, 232, 1),
                      thickness: 1,
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  left: 36.0,
                  child: Text(
                    'General',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 390,
                  left: 36.0,
                  child: Text(
                    'Help Centre',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 407,
                  left: 381.0,
                  child: Image.asset('assets/images/arrow.png'),
                ),
                Positioned(
                  top: 440,
                  left: 36.0,
                  child: Text(
                    'Settings',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 457,
                  left: 381.0,
                  child: Image.asset('assets/images/arrow.png'),
                ),
                Positioned(
                  top: 423.5,
                  left: 36.0,
                  child: Transform.rotate(
                    angle: 0,
                    child: Divider(
                      color: Color.fromRGBO(232, 232, 232, 1),
                      thickness: 1,
                    ),
                  ),
                ),
                Positioned(
                  top: 492.5,
                  left: 36.0,
                  child: Text(
                    'Language',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 509.5,
                  left: 381.0,
                  child: Image.asset('assets/images/arrow.png'),
                ),
                Positioned(
                  top: 476,
                  left: 36.0,
                  child: Transform.rotate(
                    angle: 0,
                    child: Divider(
                      color: Color.fromRGBO(232, 232, 232, 1),
                      thickness: 1,
                    ),
                  ),
                ),
                Positioned(
                  top: 546.5,
                  left: 36.0,
                  child: Text(
                    'Share Feedback',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Positioned(
                  top: 563.5,
                  left: 381.0,
                  child: Image.asset('assets/images/arrow.png'),
                ),
                Positioned(
                  top: 530,
                  left: 36.0,
                  child: Transform.rotate(
                    angle: 0,
                    child: Divider(
                      color: Color.fromRGBO(232, 232, 232, 1),
                      thickness: 1,
                    ),
                  ),
                ),
                Positioned(
                  top: 650,
                  left: 85,
                  child: Align(
                      child: AnotherButton(
                    label: "Sign Out",
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/login'); // Need to update route
                    },
                    fillColor: Colors.black,
                    borderColor: Colors.transparent,
                    fontColor: Colors.white,
                  )),
                ),
                Positioned(
                    top: -10,
                    left: 96.3978500366211,
                    child: Text('Logout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1))),
                Positioned(
                    top: 832,
                    left: 0,
                    child: Container(
                        width: 430,
                        height: 100,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 430,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.5),
                                          offset: Offset(0, 4),
                                          blurRadius: 40)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ))),
                          Positioned(
                              top: 22,
                              left: 330,
                              child: Container(
                                  width: 55,
                                  height: 59,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 41,
                                        left: 0,
                                        child: Text(
                                          'Account',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 107, 60, 1),
                                              fontFamily: 'DM Sans',
                                              fontSize: 14,
                                              decoration: TextDecoration.none,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 200,
                                            height: 35.18701171875,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Image.asset(
                                                  'assets/images/Account.jpg',
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Image.asset(
                                                  'assets/images/Account.jpg',
                                                ),
                                              ),
                                            ]))),
                                  ]))),
                          Positioned(
                              top: 20,
                              left: 43,
                              child: Container(
                                  width: 39,
                                  height: 59,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 44,
                                        left: 0,
                                        child: Text(
                                          'Home',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 107, 60, 1),
                                              fontFamily: 'DM Sans',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 39,
                                            height: 35.10000228881836,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Image.asset(
                                                  'assets/images/Home.jpg',
                                                ),
                                              ),
                                            ]))),
                                  ]))),
                          Positioned(
                              top: 20,
                              left: 151,
                              child: Container(
                                  width: 42,
                                  height: 59,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 44,
                                        left: 0,
                                        child: Text(
                                          'Listing',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 107, 60, 1),
                                              fontFamily: 'DM Sans',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 50,
                                            height: 50,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Image.asset(
                                                  'assets/images/VectorLisiting.png',
                                                ),
                                              ),
                                              Positioned(
                                                top: 21.388856887817383,
                                                left: 0,
                                                child: Image.asset(
                                                  'assets/images/VectorLisiting.png',
                                                ),
                                              ),
                                              Positioned(
                                                top: -1.1368683772161603e-13,
                                                left: 21.388856887817383,
                                                child: Image.asset(
                                                    'assets/images/VectorLisiting.png'),
                                              ),
                                              Positioned(
                                                top: 21.388856887817383,
                                                left: 21.388856887817383,
                                                child: Image.asset(
                                                  'assets/images/VectorLisiting.png',
                                                ),
                                              ),
                                            ]))),
                                  ]))),
                          Positioned(
                              top: 20,
                              left: 246,
                              child: Container(
                                  width: 45,
                                  height: 54,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 42,
                                        left: 0,
                                        child: Text(
                                          'Orders',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 107, 60, 1),
                                              fontFamily: 'DM Sans',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                              height: 1),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 1,
                                        child: Container(
                                            width: 42.42858123779297,
                                            height: 50,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Image.asset(
                                                  'assets/images/Group.png',
                                                ),
                                              ),
                                            ]))),
                                  ]))),
                        ]))),
              ],
            ),
          )
        ]))));
  }
}

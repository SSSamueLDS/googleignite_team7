import 'package:flutter/material.dart';
import 'package:googleignite_team7/widgets/AnotherButton.dart';

class FarmerListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator FarmerlistingpageWidget - FRAME
    return Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 221,
              left: 0,
              child: Container(
                  width: 430,
                  height: 189,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 430,
                  height: 222,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 150,
              left: 36,
              child: Container(
                  width: 293,
                  height: 40,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 293,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Align(
                            child: AnotherButton(
                                label: 'Search for your Listings',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/farmersearchlisting');
                                },
                                fillColor: Colors.white,
                                borderColor: Colors.transparent,
                                fontColor: Colors.white))),
                    Positioned(
                        top: 11,
                        left: 19,
                        child: Container(
                            width: 18.916013717651367,
                            height: 18.916013717651367,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Image.asset(
                                    'assets/images/searchbutton.png'),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Image.asset(
                                    'assets/images/searchbutton.png'),
                              ),
                            ]))),
                  ]))),
          Positioned(
              top: 150,
              left: 340,
              child: Container(
                  width: 40,
                  height: 40,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(0, 107, 60, 1),
                            ))),
                    Positioned(
                        top: 13,
                        left: 12.5,
                        child: Container(
                            width: 13.574073791503906,
                            height: 13.574073791503906,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Image.asset('assets/images/cross.png'),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                width: 100,
                                height: 100,
                                child: Image.asset('assets/images/cross.png'),
                              ),
                            ]))),
                  ]))),
          Positioned(
              top: 51,
              left: 165,
              child: Container(
                  width: 99,
                  height: 99,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/logo_without_text.png'),
                        fit: BoxFit.fitWidth),
                  ))),
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
                        top: 20,
                        left: 343,
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
                                        color: Color.fromRGBO(0, 107, 60, 1),
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
                                  left: 11,
                                  child: Container(
                                      width: 39,
                                      height: 35.1000022888183,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Image.asset(
                                              'assets/images/Account.jpg'),
                                        ),
                                        Positioned(
                                            top: 22.425003051757812,
                                            left: 14.6249895095825,
                                            child: Image.asset(
                                              'assets/images/Account.jpg',
                                            )),
                                        Positioned(
                                          top: 35.099979400634766,
                                          left: 4.874996662139893,
                                          child: Image.asset(
                                              "assets/images/Account.jpg"),
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
                                  top: 41,
                                  left: 0,
                                  child: Text(
                                    'Home',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 107, 60, 1),
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
                                      width: 39,
                                      height: 35.10000228881836,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Image.asset(
                                              'assets/images/Home.jpg'),
                                        ),
                                        Positioned(
                                          top: 22.425003051757812,
                                          left: 14.62498950958252,
                                          child: Image.asset(
                                              'assets/images/Home.jpg'),
                                        ),
                                        Positioned(
                                          top: 35.099979400634766,
                                          left: 4.874996662139893,
                                          child: Image.asset(
                                              "assets/images/Home.jpg"),
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
                                  top: 41,
                                  left: 0,
                                  child: Text(
                                    'Listing',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 107, 60, 1),
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
                                  left: 4,
                                  child: Container(
                                      width: 35,
                                      height: 35,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Image.asset(
                                              'assets/images/VectorLisiting.png',
                                            )),
                                        Positioned(
                                            top: 21.388856887817383,
                                            left: 0,
                                            child: Image.asset(
                                              'assets/images/VectorLisiting.png',
                                            )),
                                        Positioned(
                                            top: -1.1368683772161603e-13,
                                            left: 21.388856887817383,
                                            child: Image.asset(
                                              'assets/images/VectorLisiting.png',
                                            )),
                                        Positioned(
                                            top: 21.388856887817383,
                                            left: 21.388856887817383,
                                            child: Image.asset(
                                              'assets/images/VectorLisiting.png',
                                            )),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 25,
                        left: 260,
                        child: Container(
                            width: 45,
                            height: 54,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 0,
                                  child: Text(
                                    'Orders',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 107, 60, 1),
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
                                  left: 1,
                                  child: Container(
                                      width: 42.42858123779297,
                                      height: 26.999961853027344,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 19.285676956176758,
                                          left: 5.785708427429199,
                                          child: Image.asset(
                                              'assets/images/Group.png'),
                                        ),
                                        Positioned(
                                          top: 19.285676956176758,
                                          left: 27.96429443359375,
                                          child: Image.asset(
                                              'assets/images/Group.png'),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Image.asset(
                                              'assets/images/Group.png'),
                                        ),
                                        Positioned(
                                          top: 6.749957084655762,
                                          left: 27.96429443359375,
                                          child: Image.asset(
                                              'assets/images/Group.png'),
                                        ),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 235,
              left: 36,
              child: Container(
                  width: 374,
                  height: 131,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Category',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 31,
                        left: 0,
                        child: Container(
                            width: 374,
                            height: 100,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 86,
                                      height: 100,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 86,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16),
                                                    topRight:
                                                        Radius.circular(16),
                                                    bottomLeft:
                                                        Radius.circular(16),
                                                    bottomRight:
                                                        Radius.circular(16),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      249, 249, 249, 1),
                                                ))),
                                        Positioned(
                                            top: 73,
                                            left: 32,
                                            child: Text(
                                              'Rice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'DM Sans',
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 12,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 9,
                                            left: 6.142857074737549,
                                            child: Container(
                                                width: 73.71428680419922,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/rice (1).png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 90,
                                  child: Container(
                                      width: 86,
                                      height: 100,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 86,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16),
                                                    topRight:
                                                        Radius.circular(16),
                                                    bottomLeft:
                                                        Radius.circular(16),
                                                    bottomRight:
                                                        Radius.circular(16),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        255, 187, 1, 1),
                                                    width: 2,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 73,
                                            left: 26,
                                            child: Text(
                                              'Millets',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 12,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 9,
                                            left: 6.142857074737549,
                                            child: Container(
                                                width: 73.71428680419922,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/cake 1 (1).png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 180,
                                  child: Container(
                                      width: 86,
                                      height: 100,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 86,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16),
                                                    topRight:
                                                        Radius.circular(16),
                                                    bottomLeft:
                                                        Radius.circular(16),
                                                    bottomRight:
                                                        Radius.circular(16),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      249, 249, 249, 1),
                                                ))),
                                        Positioned(
                                            top: 73,
                                            left: 25,
                                            child: Text(
                                              'Pulses',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'DM Sans',
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 12,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 9,
                                            left: 6.142857074737549,
                                            child: Container(
                                                width: 73.71428680419922,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/burger 1 (1).png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 270,
                                  child: Container(
                                      width: 86,
                                      height: 100,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 86,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16),
                                                    topRight:
                                                        Radius.circular(16),
                                                    bottomLeft:
                                                        Radius.circular(16),
                                                    bottomRight:
                                                        Radius.circular(16),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      249, 249, 249, 1),
                                                ))),
                                        Positioned(
                                            top: 73,
                                            left: 13,
                                            child: Text(
                                              'Sugarcane',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'DM Sans',
                                                  fontSize: 12,
                                                  decoration:
                                                      TextDecoration.none,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 9,
                                            left: 6.142857074737549,
                                            child: Container(
                                                width: 73.71428680419922,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/sushi caviar 1 (1).png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 389,
              left: 36,
              child: Text(
                'All Listings',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 423,
              left: 0,
              child: Container(
                  width: 430,
                  height: 409,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 14,
                        left: 38,
                        child: Container(
                            width: 155,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Basmati Rice',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '1000kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
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
                                      width: 155,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cover.jpg'),
                                        fit: BoxFit.fitWidth,
                                      ))))
                            ]))),
                    Positioned(
                        top: 187,
                        left: 38,
                        child: Container(
                            width: 160,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 155,
                                      height: 100,
                                      child: Container())),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Jasmine White Rice',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '1000kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
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
                                      width: 155,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cover(1).jpg'),
                                        fit: BoxFit.fitWidth,
                                      ))))
                            ]))),
                    Positioned(
                        top: 360,
                        left: 38,
                        child: Container(
                            width: 155,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Lentils',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '500kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
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
                                      width: 155,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cover (3).jpg'),
                                        fit: BoxFit.fitWidth,
                                      ))))
                            ]))),
                    Positioned(
                        top: 14,
                        left: 238,
                        child: Container(
                            width: 155,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Brown Rice',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '1000kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
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
                                      width: 155,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/brown rice.jpg'),
                                        fit: BoxFit.fitWidth,
                                      ))))
                            ]))),
                    Positioned(
                        top: 187,
                        left: 238,
                        child: Container(
                            width: 159,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Organic Pearl Millet',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '1000kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
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
                                      width: 155,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cover (2).jpg'),
                                        fit: BoxFit.fitWidth,
                                      ))))
                            ]))),
                    Positioned(
                        top: 360,
                        left: 238,
                        child: Container(
                            width: 155,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Peanuts',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    'Rp 900.000',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
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
                                      width: 155,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image 4.png'),
                                        fit: BoxFit.fitWidth,
                                      ))))
                            ]))),
                    Positioned(
                        top: 533,
                        left: 38,
                        child: Container(
                            width: 155,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Sugarcane',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '1000kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 533,
                        left: 238,
                        child: Container(
                            width: 155,
                            height: 157,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: //Mask holder Template
                                      Container(
                                          width: 155,
                                          height: 100,
                                          child: null)),
                              Positioned(
                                  top: 110,
                                  left: 0,
                                  child: Text(
                                    'Sunflower Seeds',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 136,
                                  left: 0,
                                  child: Text(
                                    '500kg available',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(151, 152, 159, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                  ]))),
        ]));
  }
}

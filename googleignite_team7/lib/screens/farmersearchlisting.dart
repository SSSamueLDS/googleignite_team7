import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:googleignite_team7/widgets/MyFilledButton.dart';

class Farmersearchlisting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator FarmersearchlistingpageWidget - FRAME
    return Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 430,
                  height: 222,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 81,
              left: 79,
              child: Container(
                  width: 323,
                  height: 40,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 239,
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
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 11,
                        left: 51.079891204833984,
                        child: Text(
                          'Search for your Listings',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(173, 173, 173, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 11,
                        left: 13.366392135620117,
                        child: Container(
                            width: 19.280784606933594,
                            height: 18.916013717651367,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Image.asset('assets/images/searchbutton.png'),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Image.asset('assets/images/searchbutton.png'),
                              ),
                            ]))),
                  ]))),
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
                                      width: 31.668312072753906,
                                      height: 35.18701171875,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 8.0,
                                          child: Image.asset(
                                            'assets/images/Account.jpg',
                                          ),
                                        ),
                                        Positioned(
                                          top: 22.425003051757812,
                                          left: 14.6249895095825,
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
                                  top: 41,
                                  left: 0,
                                  child: Text(
                                    'Home',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 107, 60, 1),
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
                                        Positioned(
                                          top: 22.425003051757812,
                                          left: 14.62498950958252,
                                          child: Image.asset(
                                            'assets/images/Home.jpg',
                                          ),
                                        ),
                                        Positioned(
                                          top: 35.099979400634766,
                                          left: 4.874996662139893,
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
                                  top: 41,
                                  left: 0,
                                  child: Text(
                                    'Listing',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 107, 60, 1),
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
                        top: 25,
                        left: 246,
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
                                      height: 26.999961853027344,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 19.285676956176758,
                                          left: 5.785708427429199,
                                          child: Image.asset(
                                            'assets/images/Group.png',
                                          ),
                                        ),
                                        Positioned(
                                          top: 19.285676956176758,
                                          left: 27.96429443359375,
                                          child: Image.asset(
                                            'assets/images/Group.png',
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Image.asset(
                                            'assets/images/Group.png',
                                          ),
                                        ),
                                        Positioned(
                                          top: 6.749957084655762,
                                          left: 27.96429443359375,
                                          child: Image.asset(
                                            'assets/images/Group.png',
                                          ),
                                        ),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 91,
              left: 46,
              child: Transform.rotate(
                angle: -90 * (math.pi / 180),
                child: Image.asset(
                  'assets/images/x.png',
                ),
              )),
          Positioned(
              top: 207,
              left: 36,
              child: Text(
                'Recent Searches',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 245,
              left: 79,
              child: Text(
                'Purple Sugarcane',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(173, 173, 173, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 244,
              left: 36,
              child: Container(
                  width: 25,
                  height: 21.3388614654541,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/recentsearch.png',
                      ),
                    ),
                    Positioned(
                      top: 4.5454487800598145,
                      left: 4.5454487800598145,
                      child: Image.asset(
                        'assets/images/recent.png',
                      ),
                    ),
                    Positioned(
                      top: 7.954559803009033,
                      left: 12.499996185302734,
                      child: Image.asset(
                        'assets/images/recent.png',
                      ),
                    ),
                  ]))),
          Positioned(
              top: 279,
              left: 79,
              child: Text(
                'Green Sugarcane',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(173, 173, 173, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 314,
              left: 79,
              child: Text(
                'Green Beans',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(173, 173, 173, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 278,
              left: 36,
              child: Container(
                  width: 25,
                  height: 21.3388614654541,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 4.5454487800598145,
                      left: 4.5454487800598145,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 7.954559803009033,
                      left: 12.499996185302734,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                  ]))),
          Positioned(
              top: 313,
              left: 36,
              child: Container(
                  width: 25,
                  height: 21.3388614654541,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 4.5454487800598145,
                      left: 4.5454487800598145,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 7.954559803009033,
                      left: 12.499996185302734,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                  ]))),
          Positioned(
              top: 245,
              left: 387,
              child: Container(
                  width: 15,
                  height: 15,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                  ]))),
          Positioned(
              top: 279,
              left: 387,
              child: Container(
                  width: 15,
                  height: 15,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                  ]))),
          Positioned(
              top: 314,
              left: 387,
              child: Container(
                  width: 15,
                  height: 15,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/x.png',
                      ),
                    ),
                  ]))),
        ]));
  }
}

@override
Widget _buildSecondContainer(BuildContext context) {
  return Expanded(
      child: MyFilledButton(
    label: "Search for your listings",
    onPressed: () {
      Navigator.pushNamed(context, '/farmersearchlisting');
    },
    fillColor: Colors.black,
    borderColor: Colors.transparent,
    fontColor: Colors.white,
  ));
}

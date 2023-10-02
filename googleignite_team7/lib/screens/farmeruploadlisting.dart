import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:googleignite_team7/widgets/OrderButton.dart'; 

class Uploadlisting extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator FarmeruploadinglistingpageWidget - FRAME
            return Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
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
          image : DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 85,
        left: 96,
        child: Text('Upload New Product', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 471,
        left: 38,
        child: Container(
      width: 326,
      height: 36,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Name of the Product', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(1, 0, 0, 0.5),
        fontFamily: 'DM Sans',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 36,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),
        ]
      )
    )
      ),Positioned(
        top: 577,
        left: 38,
        child: Container(
      width: 326,
      height: 36,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Available Amount', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(1, 0, 0, 0.5),
        fontFamily: 'DM Sans',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 36,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),
        ]
      )
    )
      ),Positioned(
        top: 524,
        left: 38,
        child: Container(
      width: 326,
      height: 36,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Description', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(1, 0, 0, 0.5),
        fontFamily: 'DM Sans',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 36,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),
        ]
      )
    )
      ),Positioned(
        top: 630,
        left: 38,
        child: Container(
      width: 326,
      height: 36,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Select Metrics (e.g. kg, g, lbs, etc.)', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(1, 0, 0, 0.5),
        fontFamily: 'DM Sans',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 36,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),
        ]
      )
    )
      ),Positioned(
        top: 683,
        left: 38,
        child: Container(
      width: 326,
      height: 36,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Expiry Date', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(1, 0, 0, 0.5),
        fontFamily: 'DM Sans',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 36,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),
        ]
      )
    )
      ),Positioned(
        top: 736,
        left: 38,
        child: Container(
      width: 326,
      height: 36,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Text('Open to?', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(1, 0, 0, 0.5),
        fontFamily: 'DM Sans',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 36,
        left: 0,
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      )
      
      ),
        ]
      )
    )
      ),Positioned(
        top: 207,
        left: 36,
        child: Text('Upload Picture', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 436,
        left: 38,
        child: Text('Product Information', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 229,
        left: 36,
        child: Text('This picture will be shown when listed on buyer’s page', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 256,
        left: 38,
        child: Container(
        width: 353,
        height: 149,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
      color : Color.fromRGBO(249, 249, 249, 1),
      border : Border.all(
          color: Color.fromRGBO(173, 173, 173, 1),
          width: 1,
        ),
  )
      )
      ),Positioned(
        top: 298,
        left: 192,
        child:  //Mask holder Template
    Container(
      width: 46.71885681152344,
      height: 46.71885681152344,
      child: null
    )
      ),Positioned(
        top: 830,
        left: 50,
        child: null
      ),Positioned(
        top: 91,
        left: 46,
        child: Transform.rotate(
        angle: -90 * (math.pi / 180),
        child: Image.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      );,
      )
      ),
        ]
      )
    );
          }
        }
        
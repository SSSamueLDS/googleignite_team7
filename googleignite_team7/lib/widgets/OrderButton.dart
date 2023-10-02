import 'package:flutter/material.dart';

class AnotherButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;

  const AnotherButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.fillColor,
    required this.borderColor,
    required this.fontColor,
  }) : super(key: key);


  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: RawMaterialButton(
        onPressed: onPressed,
        elevation: 2.0,
        fillColor: Colors.white,
        child: Icon(
          
        )
        ), // Change border color here
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(fillColor),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            label:'hehe'
            style: TextStyle(
              color: Color.fromRGBO(173, 173, 173, 1),
              fontFamily: 'DM Sans',
              fontSize: 14,
              decoration: TextDecoration.none,
              letterSpacing:
               0 /*percentages not used in flutter. defaulting to zero*/,
               fontWeight: FontWeight.normal,
              height: 1),
        
            ),
          ),
        ),
    )
    ;
  }
}
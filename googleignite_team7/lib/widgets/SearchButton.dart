import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;

  const SearchButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.fillColor,
    required this.borderColor,
    required this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: borderColor), // Change border color here
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(fillColor),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            label,
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
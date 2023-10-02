import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;

  const OrderButton({
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
            Icons.pause,
            size: 35.0,
          ),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(), // Change border color here
        ));
  }
}

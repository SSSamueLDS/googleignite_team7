import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;

  const MyFilledButton({
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
      width: double.infinity,
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
              fontSize: 18,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}

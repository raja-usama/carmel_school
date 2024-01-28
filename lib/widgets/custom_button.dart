import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double? height;
  final double? width;
  final double? fontSize;
  final bool isOutlinedButton;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.height = 35,
    this.width = 100,
    this.isOutlinedButton = false,
    this.onPressed,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: isOutlinedButton ? Colors.transparent : backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: isOutlinedButton
                ? Border.all(color: backgroundColor, width: 1.5)
                : null),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                fontFamily: "sfPro",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
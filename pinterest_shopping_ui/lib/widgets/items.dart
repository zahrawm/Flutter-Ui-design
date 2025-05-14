import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;

  final double height;
  final double width;
  final double borderRadius;
  final TextStyle? textStyle;

  const MyButton({
    super.key,
    required this.color,
    required this.text,

    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 20,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style:
                textStyle ??
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
          ),
        ),
      ),
    );
  }
}

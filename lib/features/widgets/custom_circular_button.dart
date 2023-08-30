import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton(
      {super.key,
      required this.height,
      required this.width,
      required this.size,
      required this.backgroundColor,
      required this.fontColor});

  final double height;
  final double width;
  final String size;
  final Color fontColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.04,
      width: width * 0.09,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(color: fontColor),
        ),
      ),
    );
  }
}

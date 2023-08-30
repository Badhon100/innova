import 'package:flutter/material.dart';

class CustomSocialContainer extends StatelessWidget {
  const CustomSocialContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final double height;
  final double width;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.066,
        width: width * 0.15,
        decoration: BoxDecoration(
            color: const Color(0xffECE9EC),
            borderRadius: BorderRadius.circular(50)),
        child: Image.asset(image),
      ),
    );
  }
}

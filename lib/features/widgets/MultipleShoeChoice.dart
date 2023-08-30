import 'package:flutter/material.dart';
import 'package:innova/util/shoe_details.dart';

class MultipleShoeChoice extends StatelessWidget {
  const MultipleShoeChoice({
    super.key,
    required this.height,
    required this.width,
    required this.index,
    required this.imgIndex,
  });

  final double height;
  final double width;
  final int index;
  final int imgIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.08,
        width: width * 0.15,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Image.asset(shoeDetails[index]['images'][imgIndex]),
      ),
    );
  }
}

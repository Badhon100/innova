import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.height,
    required this.width,
    required this.onTap
  });

  final double height;
  final double width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.05,
        width: width * 0.3,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(30)),
        child: const Center(
          child: Text(
            "Add To Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

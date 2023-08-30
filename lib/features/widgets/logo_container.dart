import 'package:flutter/material.dart';

Padding logoAndNameContainer(
  String imageLink,
  String brandName,
  double width,
  double height,
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
      width: width * .35,
      height: height * 0.01,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(60)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width*0.15,
              height: height*0.07,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                imageLink,
              ),
            ),
            Flexible(
              child: Text(
                brandName,
                style: const TextStyle(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Padding logoContainer(String imageLink, double width) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
      width: width * 0.13,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(60)),
      child: Image.asset(imageLink),
    ),
  );
}

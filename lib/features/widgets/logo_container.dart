import 'package:flutter/material.dart';

Padding logoContainer(String imageLink) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(60)),
      child: Image.asset(imageLink),
    ),
  );
}

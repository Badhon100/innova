import 'package:flutter/material.dart';
import 'package:innova/features/screens/landing_page.dart';
import 'package:innova/features/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OXY BOOTS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Color(0xffF8F9FA),
          primary: Color(0xff0B6BFE),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:innova/features/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/login_logout/splash_screen.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            "OXY BOOTS",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

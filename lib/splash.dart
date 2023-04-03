import 'dart:async';

import 'package:flutter/material.dart';
import 'package:janjian/undanganku.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(milliseconds: 2000),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Undanganku())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.8,
              1.0,
            ],
            colors: [
              Color(0xFFA3CFEA),
              Color(0xFFEEF5FC),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 180,
              width: 180,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'janjikan ',
                      style: TextStyle(
                        color: Color(0xFFFF9711),
                      ),
                    ),
                    TextSpan(
                      text: 'Janjian ',
                      style: TextStyle(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                    TextSpan(
                      text: 'kamu',
                      style: TextStyle(
                        color: Color(0xFFFF9711),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/constants.dart';
import 'package:nuntium_news/screens/onboard/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      Get.off(() => OnboardingScreen());
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.purplePrimary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Image.asset('assets/icons/logo.png', height: 48, width: 48),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Nuntium",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}

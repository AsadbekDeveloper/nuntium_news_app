
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/constants.dart';
import 'package:nuntium_news/screens/splash/splash_screen.dart';

void main() {
  runApp(const Nuntium());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class Nuntium extends StatelessWidget {
  const Nuntium({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'San Francisco',
          appBarTheme: const AppBarTheme(
              elevation: 0,
              color: Colors.white,
              iconTheme: IconThemeData(color: AppColor.greyPrimary)),
          colorScheme:
              ThemeData().colorScheme.copyWith(background: Colors.white)),
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/screens/your_favorite_screen.dart';

import '../../../constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 72,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Welcome to Nuntium 👋",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            Text(
              "Hello, I guess you are new around here. You can start using the application after sign up.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.greyPrimary,
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 56,
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.greyLighter),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.person_outline_rounded)),
              ),
            ),
            Container(
              height: 56,
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.greyLighter),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Adress',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
            ),
            Container(
              height: 56,
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.greyLighter),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.lock_outline_rounded)),
              ),
            ),
            Container(
              height: 56,
              width: size.width,
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.greyLighter),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Repeat Password',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.lock_outline_rounded)),
              ),
            ),

            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>YourFavoriteScreen());
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width * 0.9, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: AppColor.purplePrimary,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColor.blackLighter,
                          fontSize: 16),
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColor.blackPrimary,
                              fontSize: 16),
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

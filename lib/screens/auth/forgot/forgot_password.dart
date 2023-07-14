
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/screens/auth/verification/verification_screen.dart';

import '../../../constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
            const SizedBox(
              height: 72,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Verification Code ✅",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            const Text(
              "You need to enter 4-digit code we send to your email adress.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.greyPrimary,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              height: 56,
              width: size.width,
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.greyLighter),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Adress',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>const VerificationScreen());
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width * 0.9, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: AppColor.purplePrimary,
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                      text: "Didn’t receive an email? ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColor.blackLighter,
                          fontSize: 16),
                      children: [
                        TextSpan(
                          text: "Send again",
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

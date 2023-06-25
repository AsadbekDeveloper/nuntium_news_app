import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/screens/auth/forgot/forgot_password.dart';
import 'package:nuntium_news/screens/auth/signup/signup_screen.dart';
import 'package:nuntium_news/screens/home/home_screen.dart';

import '../../../constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                "Welcome Back 👋",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            Text(
              "I am happy to see you again. You can continue where you left off by logging in",
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
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  hintText: 'Password',
                  isCollapsed: true,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Get.to(() => ForgotPasswordScreen());
                },
                child: Text("Forgot Password?"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>HomeScreen());
              },
              child: Text(
                "Sign In",
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 48),
                child: Text(
                  "or",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyPrimary),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColor.greyLighter, width: 1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/google.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Sign In with Google",
                    style:
                        TextStyle(fontSize: 20, color: AppColor.blackPrimary),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColor.greyLighter, width: 1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/facebook.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Sign In with Facebook",
                    style:
                        TextStyle(fontSize: 20, color: AppColor.blackPrimary),
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.blackLighter,
                            fontSize: 16),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColor.blackPrimary,
                                fontSize: 16),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

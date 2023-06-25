import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/screens/auth/forgot/new_password_screen.dart';

import '../../../constants.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  FocusNode focus1 = FocusNode();
  FocusNode focus2 = FocusNode();
  FocusNode focus3 = FocusNode();
  FocusNode focus4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
                "Forgot Password 🤔",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            Text(
              "We need your email adress so we can send you the password reset code.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.greyPrimary,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 56,
                  width: 56,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.greyLighter),
                  child: TextField(
                    focusNode: focus1,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '-',
                        counterText: '',
                        isCollapsed: true),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.greyLighter),
                  child: TextField(
                    focusNode: focus2,
                    maxLength: 1,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '-',
                        counterText: '',
                        isCollapsed: true),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.greyLighter),
                  child: TextField(
                    focusNode: focus3,
                    maxLength: 1,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '-',
                        counterText: '',
                        isCollapsed: true),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.greyLighter),
                  child: TextField(
                    focusNode: focus4,
                    maxLength: 1,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '-',
                        counterText: '',
                        isCollapsed: true),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => NewPasswordScreen());
              },
              child: Text(
                "Confirm",
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

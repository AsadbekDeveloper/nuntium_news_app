import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:
          const Text("Change Password", style: TextStyle(color: AppColor.blackPrimary)),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
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
                    hintText: 'Current Password',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.lock_outline_rounded)),
              ),
            ),
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
                    hintText: 'New Password',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.lock_outline_rounded)),
              ),
            ),
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
                    hintText: 'Repeat New Password',
                    isCollapsed: true,
                    prefixIcon: Icon(Icons.lock_outline_rounded)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width * 0.9, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: AppColor.purplePrimary,
              ),
              child: const Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

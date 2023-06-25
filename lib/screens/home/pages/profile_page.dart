import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/language/language_screen.dart';
import 'package:nuntium_news/screens/change_password/change_password.dart';
import 'package:nuntium_news/screens/terms/terms_conditions.dart';

import '../../../constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 72,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackPrimary),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Row(
                children: [
                  Image.asset("assets/images/person.png",
                      width: 72, height: 72),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Eren Turkmen",
                          style: TextStyle(
                              color: AppColor.blackPrimary,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "ertuken@gmail.com",
                          style: TextStyle(
                              color: AppColor.greyPrimary, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColor.greyLighter,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Switch(
                      value: notification,
                      onChanged: (value) {
                        setState(() {
                          notification = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => LanguageScreen());
                },
                child: Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColor.greyLighter,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: AppColor.greyDark, size: 20)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => ChangePasswordScreen());
                },
                child: Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColor.greyLighter,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: AppColor.greyDark, size: 20)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColor.greyLighter,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Privacy",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: AppColor.greyDark, size: 20)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => TermsConditions());
                },
                child: Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColor.greyLighter,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: AppColor.greyDark, size: 20)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColor.greyLighter,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Out",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.exit_to_app, color: AppColor.greyDark)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

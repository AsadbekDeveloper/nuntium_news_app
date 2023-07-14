import 'package:flutter/material.dart';

import '../constants.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> languages = [
    "English",
    "Turkish",
    "German",
    "Spanish",
  ];
  int enabled = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:
              const Text("Language", style: TextStyle(color: AppColor.blackPrimary)),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemBuilder: (context, index) => InkWell(
            onTap: () => setState(() => enabled = index),
            child: Container(
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: enabled == index
                    ? AppColor.purplePrimary
                    : AppColor.greyLighter,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    languages[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color:
                          enabled == index ? Colors.white : AppColor.greyDark,
                    ),
                  ),
                  enabled == index
                      ? const Icon(Icons.check, color: Colors.white, size: 20)
                      : Container(),
                ],
              ),
            ),
          ),
          itemCount: languages.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}

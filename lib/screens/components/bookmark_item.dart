import 'package:flutter/material.dart';

import '../../constants.dart';

class BookmarkItem extends StatelessWidget {
  const BookmarkItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/election.png',
              height: 96,
              width: 96,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("UI/UX Design",
                      style: TextStyle(
                          fontSize: 14, color: AppColor.greyPrimary)),
                ),
                Container(
                  width: size.width * .6,
                  child: Text(
                      "A Simple Trick For Creating Color Palettes Quickly",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.blackPrimary)),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

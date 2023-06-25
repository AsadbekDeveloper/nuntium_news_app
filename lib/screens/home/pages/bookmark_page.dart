import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../components/bookmark_item.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
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
              "Bookmarks",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackPrimary),
            ),
          ),
          Text(
            "Saved articles to the library",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColor.greyPrimary,
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return BookmarkItem(size: size);
              },
            ),
          ),

        ],
      ),
    );
  }
}

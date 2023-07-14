import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium_news/cubit/news_cubit.dart';
import 'package:nuntium_news/model/news.dart';

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
    return Padding(
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
              "Bookmarks",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackPrimary),
            ),
          ),
          const Text(
            "Saved articles to the library",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColor.greyPrimary,
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: BlocBuilder<NewsCubit, List<NewsModel>>(
              builder: (context, state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.length,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return BookmarkItem(
                      news: state[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

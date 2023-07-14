// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:nuntium_news/model/news.dart';

import '../../constants.dart';

class BookmarkItem extends StatelessWidget {
  const BookmarkItem({
    Key? key,
    required this.news,
  }) : super(key: key);
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          CachedNetworkImage(
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Icon(
                Icons.error,
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            imageUrl: news.image??'https://unsplash.com/photos/6kA9FjqUxhM',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(news.author,
                      style:
                          const TextStyle(fontSize: 14, color: AppColor.greyPrimary)),
                ),
                SizedBox(
                  width: size.width * .6,
                  child: Text(news.title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.blackPrimary)),
                ),
                const SizedBox(
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

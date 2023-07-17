// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/cubit/news_cubit.dart';

import 'package:nuntium_news/model/news.dart';
import 'package:nuntium_news/screens/article/article_screen.dart';

import '../../../constants.dart';
import '../../components/bookmark_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<String> tabs = [
    "Random",
    "Sports",
    "Politics",
    "Life",
    "Gaming",
    "Animals",
    "Nature",
    "Food",
    "Art",
    "History",
    "Fashion",
  ];

  late TabController tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 72,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Browse",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            const Text(
              "Discover things of this world",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.greyPrimary,
              ),
            ),
            const SizedBox(
              height: 32,
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
                    hintText: 'Search',
                    isCollapsed: true,
                    prefixIcon: Icon(CupertinoIcons.search),
                    suffixIcon: Icon(Icons.mic_none_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TabBar(
                isScrollable: true,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                onTap: (value) {
                  setState(() {
                    tabIndex = value;
                  });
                },
                tabs: tabs
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                            color: tabs.indexOf(e) == tabIndex
                                ? Colors.transparent
                                : AppColor.greyLighter,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(e, style: const TextStyle(fontSize: 14)),
                      ),
                    )
                    .toList(),
                controller: tabController,
                indicator: BoxDecoration(
                  color: AppColor.purplePrimary,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1, color: AppColor.purplePrimary),
                ),
                enableFeedback: false,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: AppColor.greyPrimary,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 260,
              width: size.width,
              child: BlocBuilder<NewsCubit, List<NewsModel>>(
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.length,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Get.to(
                          () => ArticleScreen(
                            news: state[index],
                          ),
                        );
                      },
                      child: HomeHorizontalArticleContainer(
                        news: state[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Recommended for you",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.blackPrimary,
                      fontWeight: FontWeight.w700,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            ),
            BlocBuilder<NewsCubit, List<NewsModel>>(
              builder: (context, state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.length,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return BookmarkItem(
                      news: state[index],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeHorizontalArticleContainer extends StatelessWidget {
  const HomeHorizontalArticleContainer({
    Key? key,
    required this.news,
  }) : super(key: key);
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      width: 256,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
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
            imageUrl: news.image ?? 'https://unsplash.com/photos/6kA9FjqUxhM',
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border, color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.author,
                    style: const TextStyle(
                        color: AppColor.greyLighter,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      news.title,
                      style: const TextStyle(
                        color: AppColor.greyLighter,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

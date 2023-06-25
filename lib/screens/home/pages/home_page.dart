import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 72,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Browse",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            Text(
              "Discover things of this world",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.greyPrimary,
              ),
            ),
            SizedBox(
              height: 32,
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
                physics: BouncingScrollPhysics(
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
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                            color: tabs.indexOf(e) == tabIndex
                                ? Colors.transparent
                                : AppColor.greyLighter,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(e, style: TextStyle(fontSize: 14)),
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
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                unselectedLabelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 260,
              width: size.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(()=> ArticleScreen());
                  },
                  child: Container(
                    height: 256,
                    width: 256,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/election.png'),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_border,
                                  color: Colors.white),
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
                                  "POLITICS",
                                  style: TextStyle(
                                      color: AppColor.greyLighter,
                                      fontWeight: FontWeight.w400),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                      "The latest situation in the presidential election",
                                      style: TextStyle(
                                          color: AppColor.greyLighter,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommended for you",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.blackPrimary,
                      fontWeight: FontWeight.w700,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return BookmarkItem(size: size);
              },
            ),
          ],
        ),
      ),
    );
  }
}


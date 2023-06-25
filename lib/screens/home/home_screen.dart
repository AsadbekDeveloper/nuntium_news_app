import 'package:flutter/material.dart';
import 'package:nuntium_news/constants.dart';
import 'package:nuntium_news/screens/home/pages/categories_page.dart';
import 'package:nuntium_news/screens/home/pages/home_page.dart';
import 'package:nuntium_news/screens/home/pages/profile_page.dart';

import 'pages/bookmark_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages = [
    HomePage(),
    CategoriesPage(),
    BookmarkPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          itemBuilder: (context, index) => pages[index]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            pageController.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png',
                  width: 20,
                  height: 22,
                  color:
                      index == 0 ? AppColor.purplePrimary : AppColor.greyLight),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/apps.png',
                  width: 20,
                  height: 22,
                  color:
                      index == 1 ? AppColor.purplePrimary : AppColor.greyLight),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/bookmark.png',
                  width: 20,
                  height: 22,
                  color:
                      index == 2 ? AppColor.purplePrimary : AppColor.greyLight),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/profile.png',
                  width: 20,
                  height: 22,
                  color:
                      index == 3 ? AppColor.purplePrimary : AppColor.greyLight),
              label: ''),
        ],
      ),
    );
  }
}

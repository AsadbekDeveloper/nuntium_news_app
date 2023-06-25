import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/constants.dart';
import 'package:nuntium_news/screens/auth/signin/signin_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/onboard_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<OnboardingModel> pages = [
    OnboardingModel(
        name: "First to know",
        image: 'assets/images/onboard.png',
        desc: "All news in one place, be the first to know last news"),
    OnboardingModel(
        name: "First to know",
        image: 'assets/images/onboard.png',
        desc: "All news in one place, be the first to know last news"),
    OnboardingModel(
        name: "Nuntium",
        image: 'assets/images/illustration.png',
        desc: "All news in one place, be the first to know last news"),
  ];
  int index = 0;

  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          CarouselSlider(
              items: List.generate(3, (index) {
                return Image.asset(pages[index].image);
              }),
              carouselController: controller,
              options: CarouselOptions(
                height: 380,
                aspectRatio: 16 / 9,
                viewportFraction: index == 2 ? 1 : 0.7,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {
                  setState(() {
                    this.index = index;
                  });
                  print(this.index);
                },
                scrollDirection: Axis.horizontal,
              )),
          Padding(
            padding: const EdgeInsets.all(16),
            child: AnimatedSmoothIndicator(
                activeIndex: index,
                count: pages.length,
                effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: AppColor.greyLighter,
                    activeDotColor: AppColor.purplePrimary),
                // your preferred effect
                onDotClicked: (index) {}),
          ),
          Text(
            pages[index].name,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.blackPrimary),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 80),
            child: Text(
              pages[index].desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColor.greyPrimary,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: ElevatedButton(
              onPressed: () {
                if (index == 2) {
                  Get.off(() => SignInScreen());
                } else {
                  setState(() {
                    index++;
                  });
                  controller.animateToPage(index);

                }
              },
              child: Text(
                index != 2 ? "Next" : "Get Started",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(size.width * 0.9, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: AppColor.purplePrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}

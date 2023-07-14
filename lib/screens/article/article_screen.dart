import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/constants.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/election.png",
                  width: size.width,
                  height: 400,
                  fit: BoxFit.fill,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      fit: StackFit.loose,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.arrow_back, color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.bookmark_border_rounded,
                                    color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.share, color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              color: AppColor.purplePrimary,
                              borderRadius: BorderRadius.circular(16)),
                          child: const Text("US Election",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "The latest situation in the presidential election",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset("assets/images/person.png"),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Designer",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.greyLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Results",
                        style: TextStyle(
                          color: AppColor.blackPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      "Leads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races.\n\nFor more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters.\n\nLeads in individual states may change from one party to another as all the votes are counted. Select a state for detailed results, and select the Senate, House or Governor tabs to view those races.\n\nFor more detailed state results click on the States A-Z links at the bottom of this page. Results source: NEP/Edison via Reuters.",
                      style: TextStyle(
                        color: AppColor.greyDark,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

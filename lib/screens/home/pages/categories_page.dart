import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<String> categories = [
    "🏈  Sports",
    "⚖️  Politics",
    "🌞  Life",
    "🎮  Gaming",
    "🐻  Animals",
    "🌴  Nature",
    "🍔  Food",
    "🎨  Art",
    "📜  History",
    "👗  Fashion",
    "😷   Covid-19",
    "⚔️   Middle East",
  ];

  @override
  Widget build(BuildContext context) {
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
              "Categories",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackPrimary),
            ),
          ),
          Text(
            "Thousands of articles in each category",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColor.greyPrimary,
            ),
          ),
          SizedBox(height: 24),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 90),
            itemCount: categories.length,
            physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
                decelerationRate: ScrollDecelerationRate.normal),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColor.greyLight),
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.greyDark),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

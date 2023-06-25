import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuntium_news/screens/home/home_screen.dart';

import '../constants.dart';

class YourFavoriteScreen extends StatefulWidget {
  const YourFavoriteScreen({super.key});

  @override
  State<YourFavoriteScreen> createState() => _YourFavoriteScreenState();
}

class _YourFavoriteScreenState extends State<YourFavoriteScreen> {
  List<FavoriteModel> favorites = [
    FavoriteModel("🏈   Sports"),
    FavoriteModel("⚖️   Politics"),
    FavoriteModel("🌞   Life"),
    FavoriteModel("🎮   Gaming"),
    FavoriteModel("🐻   Animals"),
    FavoriteModel("🌴   Nature"),
    FavoriteModel("🍔   Food"),
    FavoriteModel("🎨   Art"),
    FavoriteModel("📜   History"),
    FavoriteModel("👗   Fashion"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
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
                "Select your favorite topics",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackPrimary),
              ),
            ),
            Text(
              "Select some of your favorite topics to let us suggest better news for you.",
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
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      favorites[index].enabled = !favorites[index].enabled;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: favorites[index].enabled
                            ? AppColor.purplePrimary
                            : AppColor.greyLighter),
                    child: Text(
                      favorites[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: favorites[index].enabled
                            ? Colors.white
                            : AppColor.greyDark,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(()=>HomeScreen());
              },
              child: Text(
                "Next",
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
          ],
        ),
      ),
    );
  }
}

class FavoriteModel {
  String name;
  bool enabled;

  FavoriteModel(this.name, {this.enabled = false});
}

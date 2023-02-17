import 'package:drinks_app/data/assets.dart';
import 'package:drinks_app/data/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/drinks.dart';
import 'components/drinks_card.dart';
import 'components/popular_drinks_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.kPrimary,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(CustomAssets.kUserPic),
          ),
        ),
        title: const Text(
          "Hello, Alex",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Which Champagne do you want to pour?',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: const [
                Text("All",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
                Spacer(),
                Text("Filter",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
                SizedBox(width: 5),
                Icon(Icons.filter_list, color: Colors.white, size: 15)
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 230,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 24),
                itemBuilder: ((context, index) {
                  return DrinksCard(drinks: drinksList[index]);
                }),
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: drinksList.length),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Most Popular',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 20),
          ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return PopularDrinksCard(
                  drinks: popularList[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: popularList.length)
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: CustomColors.kPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home_outlined,size: 35,color: Colors.white,),
            Icon(Icons.favorite_outline,size: 35,color: Colors.white,),
            Icon(Icons.person_3_outlined,size: 35,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}

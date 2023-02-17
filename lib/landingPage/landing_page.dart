import 'package:drinks_app/data/assets.dart';
import 'package:drinks_app/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: 600,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
                image: DecorationImage(
                    image: AssetImage(CustomAssets.kDrink), fit: BoxFit.cover)),
          ),
          const SizedBox(height: 20),
          Text(
            "Champagne",
            style: GoogleFonts.acme(fontSize: 30, color: Colors.white),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const HomeView());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Text(
                "POUR IT",
                style: GoogleFonts.acme(color: Colors.black),
              )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

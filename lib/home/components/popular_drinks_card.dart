import 'package:drinks_app/data/assets.dart';
import 'package:drinks_app/models/drinks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularDrinksCard extends StatelessWidget {
  final Drinks drinks;
  const PopularDrinksCard({super.key, required this.drinks});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 100,
            width: double.maxFinite,
            padding: const EdgeInsets.only(
                left: 100, top: 10, right: 10, bottom: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  drinks.name,
                  style: GoogleFonts.acme(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  drinks.description ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.acme(fontSize: 14),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("+${drinks.price} \$"),
                      const Icon(Icons.favorite_outline, size: 14)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                drinks.image,
                width: 100,
              ))
        ],
      ),
    );
  }
}

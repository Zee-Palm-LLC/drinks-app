import 'package:drinks_app/models/drinks.dart';
import 'package:flutter/material.dart';

import '../../data/assets.dart';

class DrinksCard extends StatelessWidget {
  final Drinks drinks;
  const DrinksCard({super.key, required this.drinks});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            bottom: 0,
            child: Container(
              height: 180,
              width: 140,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  drinks.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("+${drinks.price} \$"),
                    const Icon(Icons.favorite_outline, size: 14)
                  ],
                ),
              ]),
            )),
        Image.asset(drinks.image, width: 150)
      ],
    );
  }
}

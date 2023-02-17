// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drinks_app/data/assets.dart';

class Drinks {
  String image;
  String name;
  String price;
  String? description;
  Drinks(
      {required this.name,
      required this.image,
      required this.price,
      this.description});
}

List<Drinks> drinksList = [
  Drinks(name: 'White Wine', image: CustomAssets.kContent1, price: '10'),
  Drinks(name: 'Black Wine', image: CustomAssets.kContent2, price: '15'),
];

List<Drinks> popularList = [
  Drinks(
      name: 'Rose Fruity Wine',
      image: CustomAssets.kContent1,
      price: '10',
      description:
          'At vero eos et accusamus et iusto odio dignissimos ducimus '),
  Drinks(
      name: 'Black Berry Wine',
      image: CustomAssets.kContent2,
      price: '15',
      description:
          'At vero eos et accusamus et iusto odio dignissimos ducimus '),
];

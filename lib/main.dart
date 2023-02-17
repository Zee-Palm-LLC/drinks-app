import 'package:drinks_app/data/color.dart';
import 'package:drinks_app/landingPage/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Drinks App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: CustomColors.kPrimary),
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      home: const LandingPage(),
    );
  }
}

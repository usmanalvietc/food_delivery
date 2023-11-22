import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_devivery/custom_widgets/ui_healper.dart';
import 'package:food_devivery/screens/onbording_screen/onbording1.dart';

import '../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnbordingFist(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String assetImage2 = 'assets/images/Grouplogo2.png';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? MyColor.bgWColor
          : MyColor.bgBColor,
      body: Stack(
        children: [
          isLight
              ? SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: SvgPicture.asset(bcwimage))
              : SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(bcbimage),),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(assetImage2),
                const Text(
                  "FoodNinja",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: MyColor.secondaryBColor),
                ),
                Text(
                  "Deliever Favorite Food",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).brightness == Brightness.light
                          ? MyColor.textWColor
                          : MyColor.textBColor),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

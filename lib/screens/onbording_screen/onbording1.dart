import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/onbording2.dart';

import '../../custom_widgets/ui_healper.dart';
import '../../main.dart';

class OnbordingFist extends StatefulWidget {
  const OnbordingFist({super.key});

  @override
  State<OnbordingFist> createState() => _OnbordingFistState();
}

class _OnbordingFistState extends State<OnbordingFist> {
  @override
  Widget build(BuildContext context) {
    const String assetImage = 'assets/images/bording1.svg';
    mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).brightness==Brightness.light ? MyColor.bgWColor : MyColor.bgBColor,
        body: Container(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: mq.height / 1.8,
                  child: SvgPicture.asset(assetImage)),
              SizedBox(
                height: mq.height / 40,
              ),
              SizedBox(
                width: 260,
                child: Text(
                  "Find your Comfort \nFood here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).brightness==Brightness.light ? MyColor.textWColor : MyColor.textBColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: mq.height / 17,
              ),
              SizedBox(
                width: 290,
                child: Text(
                  "Here You Can find a chef or dish for every\n taste and color. Enjoy!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).brightness==Brightness.light ? MyColor.textWColor : MyColor.textBColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: mq.height / 15,
              ),
              SizedBox(
                  width: mq.width / 2.9,
                  height: mq.height / 17,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnbordingSecend(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff27ca7d),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

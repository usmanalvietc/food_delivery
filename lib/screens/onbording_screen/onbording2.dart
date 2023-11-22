import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/login_screen.dart';

import '../../custom_widgets/ui_healper.dart';
import '../../main.dart';

class OnbordingSecend extends StatefulWidget {
  const OnbordingSecend({super.key});

  @override
  State<OnbordingSecend> createState() => _OnbordingSecendState();
}

class _OnbordingSecendState extends State<OnbordingSecend> {
  @override
  Widget build(BuildContext context) {
    const String assetImage = 'assets/images/onbording2.svg';
    mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? MyColor.bgWColor
            : MyColor.bgBColor,
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
                  "Food Ninja is Where Your\n Comfort Food Lives",
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
                  "Enjoy a fast and smooth food delivery at\n your doorstep",
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
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff27ca7d),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
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

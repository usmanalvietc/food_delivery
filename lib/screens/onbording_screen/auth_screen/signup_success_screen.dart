import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/verification_screen.dart';

import '../../../custom_widgets/ui_healper.dart';
import '../../../main.dart';

class SignUpSuccessScreen extends StatefulWidget {
  const SignUpSuccessScreen({super.key});

  @override
  State<SignUpSuccessScreen> createState() => _SignUpSuccessScreenState();
}

class _SignUpSuccessScreenState extends State<SignUpSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    const String signupsuccess = 'assets/images/success_logo.svg';
    return SafeArea(
        child: Scaffold(
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
                  child: Image.asset(bcbimage),
                ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                ),
                Center(child: SvgPicture.asset(signupsuccess)),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Congrats!",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: MyColor.secondaryBColor),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Your Profile Is Ready To Use",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.textWColor
                        : MyColor.textBColor,
                  ),
                ),
                SizedBox(
                  height: mq.height / 1.9,
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: mq.width / 2.9,
                        height: mq.height / 17,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VerificationScreen(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff27ca7d),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text(
                            "Try Oder",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

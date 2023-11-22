import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/signup_success_screen.dart';

import '../../custom_widgets/ui_healper.dart';
import '../../main.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({super.key});

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    const String locatianimage = 'assets/images/location_image.svg';
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
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0x69f9a84d),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xffbacDA6317),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Set Your Location ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).brightness == Brightness.light
                            ? MyColor.textWColor
                            : MyColor.textBColor),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "This data will be displayed in your account\n profile for security",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).brightness == Brightness.light
                            ? MyColor.textWColor
                            : MyColor.textBColor),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: mq.height / 5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Color(0xd3fff8f8)
                            : Color(0x69252525),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(locatianimage),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Your Location",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? MyColor.textWColor
                                        : MyColor.textBColor),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            width: double.infinity,
                            height: mq.height / 12,
                            decoration: BoxDecoration(
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? MyColor.textfeildWColor
                                    : MyColor.textfeildBColor,
                                borderRadius: BorderRadius.circular(19)),
                            child: Center(
                              child: Text(
                                "Set Location",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? MyColor.textWColor
                                        : MyColor.textBColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mq.height / 1.3,
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
                                    builder: (context) => SignUpSuccessScreen(),
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
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

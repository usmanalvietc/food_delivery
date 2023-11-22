import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/custom_widgets/costom_textfelid/costom_textfield.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/signup_screen.dart';
import 'package:food_devivery/screens/payment_method_screen/payment_method_screen.dart';

import '../../../custom_widgets/ui_healper.dart';
import '../../../main.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({super.key});

  @override
  State<SignUpProcess> createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
  final fristnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
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
                    "Fill in your bio to get\nstarted",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.light
                            ? MyColor.textWColor
                            : MyColor.textBColor),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "This data will be displayed in your accountn\n profile for security",
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
                  CustomTextField(
                      mController: fristnameController,
                      mFillColor:
                          Theme.of(context).brightness == Brightness.light
                              ? MyColor.textfeildWColor
                              : MyColor.textfeildBColor,
                      isPassword: false,
                      hint: "First Name"),
                  SizedBox(
                    height: 18,
                  ),
                  CustomTextField(
                      mController: lastnameController,
                      mFillColor:
                          Theme.of(context).brightness == Brightness.light
                              ? MyColor.textfeildWColor
                              : MyColor.textfeildBColor,
                      isPassword: false,
                      hint: "Last Name"),
                  SizedBox(
                    height: 18,
                  ),
                  CustomTextField(
                      mController: mobileController,
                      mFillColor:
                          Theme.of(context).brightness == Brightness.light
                              ? MyColor.textfeildWColor
                              : MyColor.textfeildBColor,
                      isPassword: false,
                      hint: "Mobile Number"),
                  SizedBox(
                    height: mq.height / 2,
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
                                    builder: (context) => PaymentMethodScreen(),
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

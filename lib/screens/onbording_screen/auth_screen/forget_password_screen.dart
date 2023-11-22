import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/reset_password_screen.dart';

import '../../../custom_widgets/ui_healper.dart';
import '../../../main.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    const String chatimage = 'assets/images/Vectorchat_logo.svg';
    const String messageimage = 'assets/images/message_logo.svg';
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
                        "Forgot password?",
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
                        "Select which contact details should we \nuse to reset your password",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).brightness == Brightness.light
                                ? MyColor.textWColor
                                : MyColor.textBColor),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: mq.height / 10,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Theme.of(context).brightness == Brightness.light
                                ? MyColor.textfeildWColor
                                : MyColor.textfeildBColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: ListTile(
                            leading: SvgPicture.asset(chatimage),
                            title: Text("Via sms:",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Theme.of(context).brightness == Brightness.light
                                  ? MyColor.textWColor
                                  : MyColor.textBColor
                            ),),
                            subtitle: Text("####  ####  4235",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Theme.of(context).brightness == Brightness.light
                                    ? MyColor.textWColor
                                    : MyColor.textBColor
                            ),),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                          height: mq.height / 10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Theme.of(context).brightness == Brightness.light
                                  ? MyColor.textfeildWColor
                                  : MyColor.textfeildBColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: ListTile(
                              leading: SvgPicture.asset(messageimage),
                              title: Text("Via email:",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Theme.of(context).brightness == Brightness.light
                                      ? MyColor.textWColor
                                      : MyColor.textBColor
                              ),),
                              subtitle: Text("####  @gmail.com",style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Theme.of(context).brightness == Brightness.light
                                      ? MyColor.textWColor
                                      : MyColor.textBColor
                              ),),
                            ),
                          )
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
                                        builder: (context) => ResetPasswordScreen(),
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

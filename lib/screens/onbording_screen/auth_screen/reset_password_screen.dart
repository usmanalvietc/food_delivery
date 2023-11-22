import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/custom_widgets/costom_textfelid/costom_textfield.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/pass_seccess_screen.dart';

import '../../../custom_widgets/ui_healper.dart';
import '../../../main.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final comforimPassController = TextEditingController();
  final passController = TextEditingController();
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
                              color: const Color(0x69f9a84d),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xffbacda6317),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Reset your password \nhere",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).brightness == Brightness.light
                                ? MyColor.textWColor
                                : MyColor.textBColor),
                      ),
                      const SizedBox(
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
                      const SizedBox(
                        height: 25,
                      ),
                      CustomTextField(
                        hint: "New Password",
                        isPassword: true,
                        mFillColor: Theme.of(context).brightness ==
                            Brightness.light
                            ? MyColor.textfeildWColor
                            : MyColor.textfeildBColor,
                        mController: passController,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomTextField(
                        hint: "Confirm Password",
                        isPassword: true,
                        mFillColor: Theme.of(context).brightness ==
                            Brightness.light
                            ? MyColor.textfeildWColor
                            : MyColor.textfeildBColor,
                        mController: passController,
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
                                        builder: (context) => const PassSuccessScreen(),
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

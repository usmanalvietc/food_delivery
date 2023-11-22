import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/login_screen.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/signup_process.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

import '../../../custom_widgets/costom_textfelid/costom_textfield.dart';
import '../../../custom_widgets/ui_healper.dart';
import '../../../main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String logo_1 = 'assets/images/signup_logo1.png';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    return SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? MyColor.bgWColor
                : MyColor.bgBColor,
            body: Container(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
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
                        children: [
                          Column(
                            children: [
                              Image.asset(logo_1),
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
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? MyColor.textWColor
                                        : MyColor.textBColor),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, right: 17, left: 17),
                            child: Column(
                              children: [
                                Text(
                                  "Sign Up For Free",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? MyColor.textWColor
                                          : MyColor.textBColor),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                CustomTextField(
                                  hint: "Name",
                                  isPassword: false,
                                  mFillColor: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? MyColor.textfeildWColor
                                      : MyColor.textfeildBColor,
                                  mController: emailController,
                                  mIcon: CupertinoIcons.person,
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                CustomTextField(
                                  hint: "Email",
                                  isPassword: false,
                                  mFillColor: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? MyColor.textfeildWColor
                                      : MyColor.textfeildBColor,
                                  mController: emailController,
                                  mIcon: Icons.email_outlined,
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                CustomTextField(
                                  hint: "Password",
                                  isPassword: true,
                                  mFillColor: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? MyColor.textfeildWColor
                                      : MyColor.textfeildBColor,
                                  mController: passController,
                                  mIcon: Icons.lock_clock_outlined,
                                ),
                                SizedBox(
                                  height: mq.height / 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    MSHCheckbox(
                                      size: 22,
                                      value: isChecked,
                                      colorConfig: MSHColorConfig
                                          .fromCheckedUncheckedDisabled(
                                        checkedColor: MyColor.secondaryBColor,
                                      ),
                                      style: MSHCheckboxStyle.fillScaleCheck,
                                      onChanged: (selected) {
                                        setState(() {
                                          isChecked = selected;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Keep Me Signed in",
                                      style: TextStyle(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? MyColor.textWColor
                                              : MyColor.textBColor,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: mq.height / 75,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    MSHCheckbox(
                                      size: 22,
                                      value: isChecked,
                                      colorConfig: MSHColorConfig
                                          .fromCheckedUncheckedDisabled(
                                        checkedColor: MyColor.secondaryBColor,
                                      ),
                                      style: MSHCheckboxStyle.fillScaleCheck,
                                      onChanged: (selected) {
                                        setState(() {
                                          isChecked = selected;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Email Me About Special Pricing",
                                      style: TextStyle(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? MyColor.textWColor
                                              : MyColor.textBColor,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: mq.height / 15,
                                ),
                                SizedBox(
                                    width: mq.width / 2.2,
                                    height: mq.height / 17,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpProcess(),
                                            ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff27ca7d),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: const Text(
                                        "Create Account",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginScreen(),
                                          ));
                                    },
                                    child: const Text(
                                      "already have an account?",
                                      style: TextStyle(
                                          color: MyColor.secondaryBColor),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}

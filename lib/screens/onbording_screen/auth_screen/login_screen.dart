import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/onbording_screen/auth_screen/signup_screen.dart';

import '../../../custom_widgets/costom_textfelid/costom_textfield.dart';
import '../../../custom_widgets/ui_healper.dart';
import '../../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String logo_1 = 'assets/images/Grouplogo2.png';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    const String googleicon = 'assets/images/googleicon23.svg';
    const String facebookicon = 'assets/images/facebookicon.svg';
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
                  SizedBox(height: mq.height / 20,),
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
                            color: Theme.of(context).brightness == Brightness.light
                                ? MyColor.textWColor
                                : MyColor.textBColor),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28, right: 17, left: 17),
                    child: Column(
                      children: [
                        Text(
                          "Login To Your Account",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).brightness == Brightness.light
                                  ? MyColor.textWColor
                                  : MyColor.textBColor),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        CustomTextField(
                          hint: "Email",
                          isPassword: false,
                          mFillColor: Theme.of(context).brightness == Brightness.light
                              ? MyColor.textfeildWColor
                              : MyColor.textfeildBColor,
                          mController: emailController,
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        CustomTextField(
                          hint: "Password",
                          isPassword: false,
                          mFillColor: Theme.of(context).brightness == Brightness.light
                              ? MyColor.textfeildWColor
                              : MyColor.textfeildBColor,
                          mController: passController,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          "Or Continue With",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: mq.height / 17,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: isLight
                                          ? MyColor.textfeildWColor
                                          : MyColor.textfeildBColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(facebookicon),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text("Facebook")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: mq.height / 17,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: isLight
                                          ? MyColor.textfeildWColor
                                          : MyColor.textfeildBColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(googleicon),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text("Facebook")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: const Text(
                              "Forgot Your Password?",
                              style: TextStyle(color: MyColor.secondaryBColor),
                            )),
                        SizedBox(
                          height: mq.height / 50,
                        ),
                        SizedBox(
                            width: mq.width / 2.9,
                            height: mq.height / 17,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff27ca7d),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

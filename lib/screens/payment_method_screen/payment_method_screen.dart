import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_devivery/screens/uplod_images/upload_images.dart';

import '../../custom_widgets/ui_healper.dart';
import '../../main.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isLight = Theme.of(context).brightness == Brightness.light;
    const String bcwimage = 'assets/images/Patternsufx.svg';
    const String bcbimage = 'assets/images/Maskdarkbg.jpg';
    const String payneerimage = 'assets/images/payoneer_logo.svg';
    const String paypalimage = 'assets/images/paypal_logo.svg';
    const String paypaldarklogo = "assets/images/paypal_dark_logo.svg";
    const String visaimage = 'assets/images/visa_logo.svg';
    const String payneerldarklogo = "assets/images/Payoneer_logo 1payneer_dark_logo.svg";
    const String visadarklogo = 'assets/images/visa_dark_logo.svg';
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
                    "Payment Method",
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
                    height: mq.height / 12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? MyColor.textfeildWColor
                            : MyColor.textfeildBColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: isLight
                          ? SvgPicture.asset(paypalimage)
                          : SvgPicture.asset(paypaldarklogo),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: mq.height / 12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? MyColor.textfeildWColor
                            : MyColor.textfeildBColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child:  isLight
                          ? SvgPicture.asset(visaimage)
                          : SvgPicture.asset(visadarklogo),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: mq.height / 12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? MyColor.textfeildWColor
                            : MyColor.textfeildBColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child:  isLight
                          ? SvgPicture.asset(payneerimage)
                          : SvgPicture.asset(payneerldarklogo),
                    ),
                  ),
                  SizedBox(
                    height: mq.height / 1.7,
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
                                    builder: (context) => UploadImageScreen(),
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

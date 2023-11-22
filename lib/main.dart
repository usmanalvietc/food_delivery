import 'package:flutter/material.dart';
import 'package:food_devivery/screens/onbording_screen/splash_screen.dart';

import 'custom_widgets/ui_healper.dart';

late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: createMaterialColor(MyColor.bgBColor),
          backgroundColor: MyColor.bgBColor,
         ),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: createMaterialColor(MyColor.bgWColor),
        backgroundColor: MyColor.bgWColor,
        useMaterial3: true,
      ),
      home: const SafeArea(
        child:  SplashScreen(),
      ),
    );
  }
}


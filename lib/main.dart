import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/home/home_screen.dart';
import 'package:portfolio_app/screens/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
          bodyText1: TextStyle(color:bodyTextColor),
          bodyText2: TextStyle(color: bodyTextColor),
        ),
      ),
      home:HomeScreen(),
    );
  }
}

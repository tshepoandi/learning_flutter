import 'package:animated_splash_screen/animated_splash_screen.dart'
    show AnimatedSplashScreen, SplashTransition;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_tshepo/home.dart'; // import 'package:test_app_tshepo/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(0, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          splash: SvgPicture.asset("assets/codingTest/quickloc8.svg"),
          duration: 3500,
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: Colors.white,
          nextScreen: const MyHomePage(title: " Quicloc8")),
    );
  }
}

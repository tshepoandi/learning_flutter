import 'package:animated_splash_screen/animated_splash_screen.dart'
    show AnimatedSplashScreen, SplashTransition;
import 'package:flutter/material.dart';
import 'package:test_app_tshepo/home.dart';
// import 'package:test_app_tshepo/splash.dart';

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
            ColorScheme.fromSeed(seedColor: const Color.fromRGBO(232, 0, 0, 1)),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          splash: Image.asset("assets/codingTest/Quicloc8-logo.png"),
          duration: 3500,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.white,
          nextScreen: const MyHomePage(title: " Quicloc8")),
    );
  }
}

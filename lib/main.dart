import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_tshepo/home.dart';
import 'package:test_app_tshepo/splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 0, 0)),
          useMaterial3: true,
        ),
        home: AnimatedSplashScreen(
          splash: SvgPicture.asset("assets/codingTest/quickloc8.svg"),
          duration: 3500,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black,
          nextScreen: const MyHomePage(title: "ends"),
        ));
  }
}

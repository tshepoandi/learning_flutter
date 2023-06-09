import 'package:animated_splash_screen/animated_splash_screen.dart'
    show AnimatedSplashScreen, SplashTransition;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app_tshepo/home.dart';
import 'package:test_app_tshepo/splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// DotEnv dotenv = DotEnv() is automatically called during import.
// If you want to load multiple dotenv files or name your dotenv object differently, you can do the following and import the singleton into the relavant files:
// DotEnv another_dotenv = DotEnv()

Future main() async {
  // To load the .env file contents into dotenv.
  // NOTE: fileName defaults to .env and can be omitted in this case.
  // Ensure that the filename corresponds to the path in step 1 and 2.
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
  //...runapp
}

// void main() {

// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

          // colorScheme:
          // ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
          // useMaterial3: true,
          ),
      home: AnimatedSplashScreen(
        splash: SvgPicture.asset("assets/codingTest/quickloc8.svg"),
        duration: 3500,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
        nextScreen: const GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(37.773972, -122.431297), zoom: 11.5)),
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _MapScreenState {}

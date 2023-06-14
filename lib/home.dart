import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app_tshepo/messages.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(-50.97328788388191, 30.57117434524753),
    zoom: 11.5,
  );
  final Set<Marker> _markers = {};
  @override
  void initState() {
    super.initState();

    // _markers.add(
    //   const Marker(
    //     markerId: MarkerId('marker ID'),
    //     position: LatLng(-33.9685533, 18.5662383),
    //     icon: BitmapDescriptor.defaultMarker, // You can customize the icon here
    //     infoWindow: InfoWindow(title: 'Your Marker Title'),
    //   ),
    // );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            markers: _markers,
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagesPage(title: 'Messages'),
                  ),
                );
              },
              child: Icon(Icons.message),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MapScreen(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Quicloc8 Map'),
    );
  }
}
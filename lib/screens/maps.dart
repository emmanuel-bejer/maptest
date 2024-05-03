import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FirstMap extends StatefulWidget {
  const FirstMap({super.key});

  @override
  State<FirstMap> createState() => FirstMapState();
}

class FirstMapState extends State<FirstMap> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(40.750797, -73.989578),
    zoom: 12.0,
  );

  @override
  Widget build(BuildContext context) {
    final markers = {
      const Marker(
        markerId: MarkerId('1'),
        position: LatLng(40.6892, -74.0445),
        infoWindow: InfoWindow(
          title: "Statue Of Lady Liberty",
          snippet: "New York City, USA",
        ),
      ),
      Marker(
        markerId: const MarkerId('2'),
        position: const LatLng(40.706001, -73.997002),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueAzure,
        ),
        infoWindow: const InfoWindow(
          title: "Brooklyn Bridge",
          snippet: "New York City, USA",
        ),
      ),
      Marker(
        markerId: const MarkerId('3'),
        position: const LatLng(40.748817, -73.985428),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueGreen,
        ),
        infoWindow: const InfoWindow(
          title: "Empire State Building",
          snippet: "New York City, USA",
        ),
      ),
      Marker(
        markerId: const MarkerId('4'),
        position: const LatLng(40.758896, -73.985130),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet,
        ),
        infoWindow: const InfoWindow(
          title: "Times Square Manhattan",
          snippet: "New York City, USA",
        ),
      ),
      Marker(
        markerId: const MarkerId('5'),
        position: const LatLng(40.779434, -73.963402),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        infoWindow: const InfoWindow(
          title: "Metropolitan Museum of Art",
          snippet: "New York City, USA",
        ),
      ),
      Marker(
        markerId: const MarkerId('6'),
        position: const LatLng(40.712742, -74.013382),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRose,
        ),
        infoWindow: const InfoWindow(
          title: "World Trade Center",
          snippet: "New York City, USA",
        ),
      ),
      Marker(
        markerId: const MarkerId('7'),
        position: const LatLng(40.752655, -73.977295),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueYellow,
        ),
        infoWindow: const InfoWindow(
          title: "Grand Central Terminal",
          snippet: "New York City, USA",
        ),
      ),
    };

    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: true,
        initialCameraPosition: _cameraPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: markers,
      ),
    );
  }
}

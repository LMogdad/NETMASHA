import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatelessWidget {
  Maps({super.key});
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  Set<Marker> markers = {
    const Marker(
        markerId: MarkerId("657578"), position: LatLng(24.863405, 46.712697)),
    const Marker(
        markerId: MarkerId("667777"), position: LatLng(23.863401, 46.712699))
  };
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: const CameraPosition(
        target: LatLng(24.863405, 46.712697),
        zoom: 14.4746,
      ),
      markers: markers,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}

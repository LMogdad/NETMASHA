import 'package:flutter/material.dart';
import 'package:netmasha/widgets/maps.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Maps(),
    );
  }
}

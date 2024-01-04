import 'package:flutter/material.dart';
import 'package:netmasha/widgets/maps.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/ActivityLocation.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: const ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.70, -0.71),
                      end: Alignment(0.7, 0.71),
                      colors: [Color(0xFF6235AD), Color(0xFF450F9D)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "تصفح مواقع الانشطة",
                              style: TextStyle(
                                  color: bg,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery.of(context).size.height / 2.25,
                        decoration: BoxDecoration(
                            color: lightPurple,
                            borderRadius: BorderRadius.circular(15)),
                        child: Maps(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                ActivityLocation(
                  title: "ركوب الخيل",
                ),
                ActivityLocation(
                  title: "القفز المظلي",
                ),
                ActivityLocation(
                  title: "صيد السمك",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

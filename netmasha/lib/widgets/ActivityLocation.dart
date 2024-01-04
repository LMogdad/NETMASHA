import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class ActivityLocation extends StatelessWidget {
  const ActivityLocation({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            color: lightPurple, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.location_on_rounded,
              color: purple,
            )
          ]),
        ),
      ),
    );
  }
}

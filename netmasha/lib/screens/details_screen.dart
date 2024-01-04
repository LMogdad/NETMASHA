import 'package:flutter/material.dart';
import 'package:netmasha/models/experience_model.dart';
import 'package:netmasha/screens/chat_screen.dart';
import 'package:netmasha/screens/map_screen.dart';
import 'package:netmasha/screens/payment_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/details_page/ArrowBack.dart';
import 'package:netmasha/widgets/details_page/DescriptionBox.dart';
import 'package:netmasha/widgets/details_page/InfoBox.dart';
import 'package:netmasha/widgets/details_page/image_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.experience});
  final ExperienceModel experience;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      bottomSheet: Container(
        color: bg,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
                txt: ' احجز الآن',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentScreen(
                                experience: experience,
                              )));
                },
                isBigButten: true),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                ActivityImage(
                  urlImage: experience.photoUrl.toString(),
                ),
                const ArrowBack()
              ],
            ),
            DescriptionBox(
              title: experience.title.toString(),
              description: experience.description.toString(),
              adults: '${experience.adultPrice} ر.س',
              children: '${experience.childPrice} ر.س',
            ),
            InfoBox(
              chat: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              location: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MapScreen()));
              },
              call: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

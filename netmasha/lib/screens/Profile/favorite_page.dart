import 'package:flutter/material.dart';
import 'package:netmasha/models/experience_model.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/EventsContainer.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: bg,
        ),
        backgroundColor: purple,
        title: Row(
          children: [
            Text(
              "المفضلة",
              style: TextStyle(color: bg),
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          EventsContainer(
            experience: ExperienceModel(
                title: "ركوب الخيل",
                description:
                    "تجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة فريدة",
                photoUrl:
                    "https://ar.timeoutriyadh.com/cloud/artimeoutriyadh/2021/10/21/equestrian-club.jpg"),
            isLike: true,
          ),
        ],
      ),
    );
  }
}

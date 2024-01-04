import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/screens/provider/finish.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:progresso/progresso.dart';

class ProviderInfo3 extends StatelessWidget {
  ProviderInfo3({super.key});
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        leading: IconButton(
          icon: Icon(Icons.close, color: purple),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NavBar())),
        ),
      ),
      bottomSheet: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: bg,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Progresso(
                backgroundStrokeWidth: 5,
                progressStrokeWidth: 5,
                progress: 0.80,
                progressStrokeCap: StrokeCap.round,
                backgroundStrokeCap: StrokeCap.round,
                backgroundColor: const Color.fromARGB(173, 158, 158, 158),
                progressColor: purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "رجوع",
                      style: TextStyle(
                        color: purple,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Button(
                    txt: 'التالي',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FinishPage()));
                    },
                    isBigButten: false,
                    inHomePage: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " لحضات ويكون اعلانك جاهز  !!",
                  style: TextStyle(
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "اختر صورة للغلاف",
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: lightPurple,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        onPressed: () async {
                          await picker.pickImage(source: ImageSource.gallery);
                        },
                        icon: const Icon(Icons.camera_alt)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:netmasha/widgets/maps.dart';
import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/screens/provider/info.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:progresso/progresso.dart';

class ProviderInfo extends StatelessWidget {
  const ProviderInfo({super.key});

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
        color: bg,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Progresso(
                backgroundStrokeWidth: 5,
                progressStrokeWidth: 5,
                progress: 0.20,
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
                              builder: (context) => ProviderInfo1()));
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
            child: Text(
              "أين تقع تجربتك؟",
              style: TextStyle(
                color: black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width,
            color: lightPurple,
            child: Maps(),
          ),
        ],
      ),
    );
  }
}
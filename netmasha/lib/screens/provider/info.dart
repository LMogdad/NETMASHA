import 'package:flutter/material.dart';

import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/screens/provider/price.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';
import 'package:progresso/progresso.dart';

class ProviderInfo1 extends StatelessWidget {
  ProviderInfo1({super.key});
  final descriptionController = TextEditingController();
  final sentenceController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
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
                progress: 0.40,
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
                              builder: (context) => const ProviderInfo2()));
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
              "الرجاء اكمال المعلومات التالية:",
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
          CustomTextField(
            controller: nameController,
            lableText: 'اسم التجربة',
            hintText: 'ادخل اسم تجربتك',
          ),
          CustomTextField(
            controller: sentenceController,
            lableText: 'جملة إعلانية للتجربة',
            hintText: "جملة من سطر واحد ",
          ),
          CustomTextField(
            controller: descriptionController,
            lableText: " اكتب وصف التجربة",
            hintText: "وصف من ثلاثة اسطر",
            isDescription: true,
          ),
          CustomTextField(
            controller: sentenceController,
            lableText: "السجل التجاري",
            hintText: "********************",
          ),
        ],
      ),
    );
  }
}
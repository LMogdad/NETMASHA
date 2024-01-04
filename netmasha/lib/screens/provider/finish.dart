import 'package:flutter/material.dart';
import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:progresso/progresso.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
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
                progress: 100,
                progressStrokeCap: StrokeCap.round,
                backgroundStrokeCap: StrokeCap.round,
                backgroundColor: const Color.fromARGB(173, 158, 158, 158),
                progressColor: purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Button(
                  txt: 'حسناً',
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => NavBar())),
                  isBigButten: true),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                    ),
                    Text(
                      "تم اكتمال نشر التجربة بنجاح  !!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      " يمكنك الآن استقبال الحجوزات عبر خانة\n ادارة حجوزاتي",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                    height: 250, child: Image.asset("assets/Fill out-bro.png"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
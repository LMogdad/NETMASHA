import 'package:flutter/material.dart';
import 'package:netmasha/screens/otp_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        title: const Text("حساب جديد"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            controller: nameController,
            lableText: 'الإسم',
            hintText: 'الرجاء ادخال الاسم',
          ),
          CustomTextField(
              controller: phoneController,
              lableText: 'رقم الجوال',
              hintText: "****05"),
          CustomTextField(
            controller: emailController,
            lableText: 'البريد الإلكتروني',
            hintText: 'gmail.com@********',
          ),
          CustomTextField(
              controller: passwordController,
              lableText: 'كلمة المرور',
              hintText: "****************",
              isPassword: true),
          CustomTextField(
              controller: passwordController,
              lableText: 'تأكيد كلمة المرور',
              hintText: "****************",
              isPassword: true),
          const SizedBox(
            height: 40,
          ),
          Button(
            txt: 'تسجيل',
            isBigButten: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OtpScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/chat_textfield.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "ركوب الخيل",
              style: TextStyle(color: bg),
            ),
          ],
        ),
        backgroundColor: purple,
        iconTheme: IconThemeData(
          color: bg,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
      bottomSheet: const ChatTextField(),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 100),
        children: const [
          // MessageContainer(isMine: null, message: '',)
        ],
      ),
    );
  }
}

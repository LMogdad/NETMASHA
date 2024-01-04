import 'package:flutter/material.dart';
import 'package:netmasha/screens/chat_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/UsersList.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "الرسائل",
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
      body: Center(
        child: ListView(
          children: [
            UsersList(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              name: "ركوب الخيل",
              time: '',
            ),
          ],
        ),
      ),
    );
  }
}

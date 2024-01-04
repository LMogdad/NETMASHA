import 'package:flutter/material.dart';
import 'package:netmasha/screens/Profile/edit_proflie.dart';
import 'package:netmasha/screens/Profile/favorite_page.dart';
import 'package:netmasha/screens/provider/location.dart';
import 'package:netmasha/screens/splash_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/profile_page/profile_containers.dart';
import 'package:netmasha/widgets/profile_page/provider_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.70, -0.71),
                    end: Alignment(0.7, 0.71),
                    colors: [Color(0xFF6235AD), Color(0xFF450F9D)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 101,
                        height: 101,
                        decoration: ShapeDecoration(
                          color: lightPurple,
                          shape: const OvalBorder(),
                        ),
                        child: Icon(
                          Icons.person_outline_outlined,
                          size: 60,
                          color: green,
                        ),
                      ),
                      Center(
                        child: Text(
                          "ريما",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: bg),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 60,
                  right: 320,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfilePage()));
                      },
                      icon: Icon(
                        Icons.edit_note_rounded,
                        color: bg,
                        size: 30,
                      )))
            ],
          ),
          Column(
            children: [
              ProviderContainer(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProviderInfo()));
                },
              ),
              ProfileContainersClickable(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: purple,
                ),
                title: 'المفضلة',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoritePage()));
                },
              ),
              ProfileContainersClickable(
                icon: Icon(
                  Icons.language,
                  color: purple,
                ),
                title: 'اللغة',
                onTap: () {
                  showDialog(
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'هل انت متأكد انك تريد تغيير اللغة؟',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SimpleDialogOption(
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Button(
                                            txt: 'لا',
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            isBigButten: false,
                                            inHomePage: true,
                                          ),
                                          const SizedBox(width: 40),
                                          Button(
                                            txt: 'نعم',
                                            onTap: () {},
                                            isBigButten: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
              ProfileContainersClickable(
                icon: Icon(
                  Icons.exit_to_app_rounded,
                  color: purple,
                ),
                title: 'تسجيل الخروج',
                onTap: () {
                  showDialog(
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'هل انت متأكد انك تريد تسجيل الخروج؟',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SimpleDialogOption(
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Button(
                                            txt: 'لا',
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            isBigButten: false,
                                            inHomePage: true,
                                          ),
                                          const SizedBox(width: 40),
                                          Button(
                                            txt: 'نعم',
                                            onTap: () async {
                                              final SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();
                                              String token =
                                                  prefs.getString("token") ??
                                                      "";
                                              if (token.isNotEmpty) {
                                                token = "";
                                              }
                                              // ignore: use_build_context_synchronously
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SplashScreen()),
                                              );
                                            },
                                            isBigButten: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

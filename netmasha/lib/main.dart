import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_bloc.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_bloc.dart';
import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Future<bool> _checkIfLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token") ?? "";
    return token.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<OnbaordingBloc>(
              create: (BuildContext context) => OnbaordingBloc()),
          BlocProvider<AuthBloc>(create: (BuildContext context) => AuthBloc()),
          // Add other BlocProviders if needed
        ],
        child: MaterialApp(
          theme: ThemeData(fontFamily: "IBM Plex Sans Arabic"),
          locale: const Locale('ar'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('ar')],
          debugShowCheckedModeBanner: false,
          home: FutureBuilder<bool>(
            future: _checkIfLoggedIn(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data == true) {
                  return NavBar();
                } else {
                  return const SplashScreen();
                }
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}

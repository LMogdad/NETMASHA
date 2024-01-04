import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/date_bloc/date_event.dart';
import 'package:netmasha/blocs/nav_bar_bloc/nav_bar_bloc.dart';
import 'package:netmasha/blocs/nav_bar_bloc/nav_bar_event.dart';
import 'package:netmasha/blocs/nav_bar_bloc/nav_bar_state.dart';
import 'package:netmasha/screens/Profile/profile_screen.dart';
import 'package:netmasha/screens/Reservations/reservation_screen.dart';
import 'package:netmasha/screens/home_screen.dart';
import 'package:netmasha/screens/location_screen.dart';
import 'package:netmasha/screens/table_screen.dart';
import 'package:netmasha/styles/colors.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  List<Widget> listScreens = [
    const HomeScreen(),
    const LocationScreen(),
    const TableScreen(),
    const ReservationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          selectedItemColor: purple,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: state.selected,
          onTap: (index) {
            context.read<NavBarBloc>().add(ChangePageEvent(selected: index));
          },
          selectedLabelStyle: const TextStyle(fontSize: 10),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "الرئيسية"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: "اكتشف"),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_chart), label: "احسبها"),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_copy), label: "حجوزاتي"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "حسابي"),
          ],
        );
      },
    ), body: BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        return listScreens[state.selected];
      },
    ));
  }
}

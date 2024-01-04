import 'package:flutter/material.dart';
import 'package:netmasha/api/experience.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/EventsContainer.dart';

class CurrentReservations extends StatelessWidget {
  const CurrentReservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Center(
          //     child: Opacity(
          //         opacity: 0.50,
          //         child: Column(
          //           children: [
          //             SizedBox(
          //                 height: 300,
          //                 width: 300,
          //                 child: Image.asset("assets/No data-cuate.png")),
          //             const Text(
          //               "لا يوجد حجوزات حالية",
          //               style: TextStyle(fontSize: 18),
          //             )
          //           ],
          //         )))
          FutureBuilder(
              future: Experience().getView(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return EventsContainer(
                          experience: snapshot.data![index],
                        );
                      });
                  // } else if (snapshot.data!.isEmpty) {
                  //   return Center(
                  //       child: Opacity(
                  //           opacity: 0.50,
                  //           child: Column(
                  //             children: [
                  //               SizedBox(
                  //                   height: 300,
                  //                   width: 300,
                  //                   child:
                  //                       Image.asset("assets/No data-cuate.png")),
                  //               const Text(
                  //                 "لا يوجد حجوزات حالية",
                  //                 style: TextStyle(fontSize: 18),
                  //               )
                  //             ],
                  //           )));
                }
                return SizedBox(
                    height: 150,
                    child: Center(
                        child: CircularProgressIndicator(color: purple)));
              })
        ],
      ),
    );
  }
}

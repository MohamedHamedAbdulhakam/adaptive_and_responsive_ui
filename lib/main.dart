import 'dart:developer'; // For logging

import 'package:adaptive_and_responsive_ui/views/home_view.dart';
import 'package:adaptive_and_responsive_ui/views/profile_screen.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/attendence_screen.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/calls.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/calls_screen.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/create_call_screen.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/notification_screen.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/select_doctor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: AdaptiveApp()));
}

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectDoctorScreen();
  }
}






















// class MediaQueryExample extends StatelessWidget {
//   const MediaQueryExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: 
//       )
//     );
//   }
// }

// class LayoutMobile extends StatelessWidget {
//   const LayoutMobile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) {
//                 return DetailsView(number: index + 1);
//               },
//             ));
//           },
//           child: Container(
//             margin: const EdgeInsets.all(8),
//             color: Colors.green,
//             child: ListTile(
//               title: Text("${index + 1}"),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class DetailsView extends StatelessWidget {
//   const DetailsView({super.key, required this.number});
//   final int number;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           number.toString(),
//           style: const TextStyle(fontSize: 35),
//         ),
//       ),
//     );
//   }
// }

// class DesctopLayout extends StatefulWidget {
//   const DesctopLayout({super.key});

//   @override
//   State<DesctopLayout> createState() => _DesctopLayoutState();
// }

// class _DesctopLayoutState extends State<DesctopLayout> {
//   int number = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: ListView.builder(
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   number = index + 1;
//                   setState(() {});
//                 },
//                 child: Container(
//                   margin: const EdgeInsets.all(8),
//                   color: Colors.green,
//                   child: ListTile(
//                     title: Text("${index + 1}"),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//         Expanded(
//             child: Container(
//           child: Center(
//             child: Text(number.toString()),
//           ),
//         ))
//       ],
//     );
//   }
// }

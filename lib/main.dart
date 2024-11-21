import 'dart:developer'; // For logging

import 'package:flutter/material.dart';

void main() {
  runApp(FlexibleWidget());
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250,),
              Row(children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,),
                SizedBox(height: 18,
                width: 18,
                ),
                Column(children: [
                    Container(color: Colors.black,
                    height: 100,
                  width: 100,), 
                    SizedBox(height: 18,),
                     Container(color: Colors.green,
                     height: 100,
                  width: 100,)
          
                ],)
              ],)
          
            ],
          ),
        ),
      ),
    );
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

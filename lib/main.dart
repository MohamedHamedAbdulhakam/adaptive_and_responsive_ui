import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQuery());
}
class MediaQuery extends StatelessWidget {
  const MediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 200,
        ),
        Container(
          color: Colors.red,
          height: 200,
        ),
      ],
    );
  }
}
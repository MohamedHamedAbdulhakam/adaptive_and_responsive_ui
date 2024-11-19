import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQuerry());
}

class MediaQuerry extends StatelessWidget {
  const MediaQuerry({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
          title:  Text("${index + 1}"),
          );
        });
  }
}

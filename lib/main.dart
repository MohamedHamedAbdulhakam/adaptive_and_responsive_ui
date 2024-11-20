import 'dart:developer'; // For logging

import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQueryExample());
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            // Use lowercase 'constraints' for the parameter
            log(constraints.toString());
            if (constraints.maxWidth <= 500) {
              return const LayoutMobile();
            } // Log the maxWidth correctly
            else {
              return Text('another device');
            }
          },
        ),
      ),
    );
  }
}

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return DetailsView(number: index + 1);
              },
            ));
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            color: Colors.green,
            child: ListTile(
              title: Text("${index + 1}"),
            ),
          ),
        );
      },
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}

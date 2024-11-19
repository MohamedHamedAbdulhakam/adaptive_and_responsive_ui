import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQuerry());
}

class MediaQuerry extends StatelessWidget {
  const MediaQuerry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutMobile(),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return DetailsView(number: index + 1);
              }));
            },
            child: Container(
              margin: EdgeInsets.all(8),
              color: Colors.green,
              child: ListTile(
                title: Text("${index + 1}"),
              ),
            ),
          );
        });
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
      )),
    );
  }
}

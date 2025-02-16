import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  final List<Map<String, String>> calls = [
    {'name': 'Ebrahem Khaled', 'date': '24 . 04 . 2021'},
    {'name': 'Ebrahem Khaled', 'date': '24 . 04 . 2021'},
    {'name': 'Ebrahem Khaled', 'date': '24 . 04 . 2021'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calls")),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop;
          }, // Implement back navigation
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: calls.length,
          itemBuilder: (context, index) {
            return CallCard(
              name: calls[index]['name']!,
              date: calls[index]['date']!,
            );
          },
        ),
      ),
    );
  }
}

class CallCard extends StatelessWidget {
  final String name;
  final String date;

  CallCard({required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person, color: Colors.teal),
                SizedBox(width: 8),
                Text(name,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                SizedBox(width: 8),
                Text(date, style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {}, // Handle Accept
                  icon: Icon(Icons.check, color: Colors.white),
                  label: Text("Accept"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton.icon(
                  onPressed: () {}, // Handle Busy
                  icon: Icon(Icons.close, color: Colors.orange),
                  label: Text("Busy"),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.orange,
                    side: BorderSide(color: Colors.orange),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

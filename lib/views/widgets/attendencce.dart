import 'package:flutter/material.dart';

class AttendanceSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://via.placeholder.com/150"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ebrahem Elzainy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "Specialist, Doctor",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note Container
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[800],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Attendance Card
              AttendanceCard(
                title: "Attendance",
                time: "09:00 am",
                icon: Icons.check_circle,
                iconColor: Colors.green,
              ),

              SizedBox(height: 10),

              // Leaving Card
              AttendanceCard(
                title: "Leaving",
                time: "04:00 pm",
                icon: Icons.cancel,
                iconColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AttendanceCard extends StatelessWidget {
  final String title;
  final String time;
  final IconData icon;
  final Color iconColor;

  AttendanceCard({
    required this.title,
    required this.time,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Row(
              children: [
                Icon(icon, color: iconColor),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(12),
                    backgroundColor: Colors.teal,
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

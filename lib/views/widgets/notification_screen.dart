import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a new call from manager',
      'time': '02:39 AM',
      'imageUrl': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a new task from manager',
      'time': '02:39 AM',
      'imageUrl': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a medical record from analysis employee',
      'time': '02:39 AM',
      'imageUrl': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have a new call from receptionist',
      'time': '02:39 AM',
      'imageUrl': 'https://via.placeholder.com/150'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button
          },
        ),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(
            name: notifications[index]['name']!,
            message: notifications[index]['message']!,
            time: notifications[index]['time']!,
            imageUrl: notifications[index]['imageUrl']!,
          );
        },
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  const NotificationCard({
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Profile Picture
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 12),

          // Notification Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),

          // Time and Status
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 8),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.teal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

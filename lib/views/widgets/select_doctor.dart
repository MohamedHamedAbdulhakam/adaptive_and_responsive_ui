import 'package:flutter/material.dart';



class SelectDoctorScreen extends StatefulWidget {
  @override
  _SelectDoctorScreenState createState() => _SelectDoctorScreenState();
}

class _SelectDoctorScreenState extends State<SelectDoctorScreen> {
  String? selectedDoctor;
  final TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> doctors = [
    {"name": "Dr. Salma Ahmed", "status": "online", "image": "assets/doc1.png"},
    {"name": "Dr. Helmy Fadl", "status": "offline", "image": "assets/doc2.png"},
    {"name": "Dr. Shawky Haleem", "status": "online", "image": "assets/doc3.png"},
    {"name": "Dr. Islam Mahmoud", "status": "online", "image": "assets/doc4.png"},
    {"name": "Dr. Ali Ahmed", "status": "busy", "image": "assets/doc5.png"},
    {"name": "Dr. Hend Ali", "status": "busy", "image": "assets/doc6.png"},
  ];

  Color getStatusColor(String status) {
    switch (status) {
      case "online":
        return Colors.green;
      case "busy":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
        title: Text("Select Doctor"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search for doctors",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                final doctor = doctors[index];
                return ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(doctor["image"]),
                      ),
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: getStatusColor(doctor["status"]),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(doctor["name"]),
                  subtitle: Text("Specialist - Doctor"),
                  trailing: Radio<String>(
                    value: doctor["name"],
                    groupValue: selectedDoctor,
                    onChanged: (value) {
                      setState(() {
                        selectedDoctor = value;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                if (selectedDoctor != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Selected Doctor: $selectedDoctor")),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Select Doctor", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

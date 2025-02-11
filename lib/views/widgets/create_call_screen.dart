import 'package:flutter/material.dart';


class CreateCallScreen extends StatefulWidget {
  @override
  _CreateCallScreenState createState() => _CreateCallScreenState();
}

class _CreateCallScreenState extends State<CreateCallScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? _selectedDoctor;

  List<String> doctors = ['Dr. Smith', 'Dr. John', 'Dr. Alice'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Create Call"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Patient Name"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: "Age"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: "Phone Number"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: "Select Doctor"),
              value: _selectedDoctor,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedDoctor = newValue;
                });
              },
              items: doctors.map((String doctor) {
                return DropdownMenuItem<String>(
                  value: doctor,
                  child: Text(doctor),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: "Case Description",
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Send Call", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

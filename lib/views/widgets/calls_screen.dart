import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CallSScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallSScreen> {
  DateTime selectedDate = DateTime.now();

  final List<Map<String, dynamic>> calls = List.generate(
    6,
    (index) => {
      "name": "Ebrahem Khaled",
      "date": "24 . 04 . 2021",
      "status": index.isEven ? Icons.check_circle : Icons.access_time_filled,
      "statusColor": index.isEven ? Colors.green : Colors.orange,
    },
  );

  void _showDatePicker() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TableCalendar(
                focusedDay: selectedDate,
                firstDay: DateTime(2000),
                lastDay: DateTime(2100),
                selectedDayPredicate: (day) {
                  return isSameDay(selectedDate, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    selectedDate = selectedDay;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calls"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "${selectedDate.day} . ${selectedDate.month} . ${selectedDate.year}",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: _showDatePicker,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                )
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: calls.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal[100],
                        child: Icon(Icons.person, color: Colors.teal),
                      ),
                      title: Text(calls[index]["name"]),
                      subtitle: Text(calls[index]["date"]),
                      trailing: Icon(
                        calls[index]["status"],
                        color: calls[index]["statusColor"],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

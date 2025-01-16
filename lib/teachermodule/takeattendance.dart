import 'package:flutter/material.dart';

class Takeattendance extends StatefulWidget {
  const Takeattendance({super.key});

  @override
  State<Takeattendance> createState() => _TakeattendanceState();
}

class _TakeattendanceState extends State<Takeattendance> {
  String? _attendanceStatus = 'Present'; // Initial state for radio buttons

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Search Bar
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Search by Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70,),
            // Attendance Row with Radio Buttons
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              color: const Color.fromARGB(99, 88, 180, 255),
              child: Row(
                children: [
                  // Avatar
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avator.png'),
                  ),
                  SizedBox(width: 19),
                  Text('More Adesh'),
                  SizedBox(width: 10),
                  Text('R001'),
                  SizedBox(width: 10),

                  // Radio buttons for Present and Absent
                  Radio<String>(
                    value: 'Present',
                    groupValue: _attendanceStatus,
                    onChanged: (value) {
                      setState(() {
                        _attendanceStatus = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'Absent',
                    groupValue: _attendanceStatus,
                    onChanged: (value) {
                      setState(() {
                        _attendanceStatus = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

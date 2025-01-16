import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/teachermodule/takeattendance.dart';
import 'package:flutter/material.dart';

class Teacherattendance extends StatefulWidget {
  const Teacherattendance({super.key});

  @override
  State<Teacherattendance> createState() => _TeacherattendanceState();
}

class _TeacherattendanceState extends State<Teacherattendance> {
  String? selectedMonth;
  String? selectedYear;

  List<String> Month = [
    'january',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'Septembar',
    'october',
    'novembar',
    'december'
  ];
  List<String> classes = ['2024', '2025', '2026'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attendance',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        toolbarHeight: 70,
        backgroundColor: primaryColor,
        titleSpacing: 70,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Takeattendance()),
                      );
                    },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 207, 138),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.0, color: Colors.grey)),
                child: Center(
                  child: Text(
                    'Take Attendance',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 185, 246, 246),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child: Center(
                child: Text(
                  'Attendance Records',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 163, 163),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child: Center(
                child: Text(
                  'Previous Record',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 60),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(selectedMonth ?? " Month",style: TextStyle(fontSize: 18),),
                      ),
                      // underline: Container(),
                      value: selectedMonth,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedMonth = newValue;
                        });
                      },
                      items:
                          Month.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedYear ?? "Year",style: TextStyle(fontSize: 18),),
                      ),
                      underline: Container(),
                      value: selectedYear,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedYear = newValue;
                        });
                      },
                      items:
                          classes.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



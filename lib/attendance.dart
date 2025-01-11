import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  DateTime _selectedDate = DateTime.now();
  
  // Initialize the CalendarController (optional)
  late DateTime _focusedDay;
  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();  // Set the initial focused day to today
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: 30.0, 
          color: Colors.white,// Set the size of the back arrow here
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
        title: Text('Attendance',style: TextStyle(fontSize: 23,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Table Calendar
            Container(
              height: 350,
              decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 234, 223, 223),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                )
              ),
              child: TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2020, 01, 01),
                lastDay: DateTime.utc(2030, 12, 31),
                selectedDayPredicate: (day) {
                  // Use this to highlight the selected day
                  return isSameDay(day, _selectedDate);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDate = selectedDay;
                    _focusedDay = focusedDay; // Update the focused day
                  });
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            
            // Display the selected date
          
          ],
        ),
      ),
      



    );
  }
}
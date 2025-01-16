// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class Attendance extends StatefulWidget {
//   const Attendance({super.key});

//   @override
//   State<Attendance> createState() => _AttendanceState();
// }

// class _AttendanceState extends State<Attendance> {
//   CalendarFormat _calendarFormat =CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime ? _selectedDay;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Attendance',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
//       leading: IconButton(
//         icon: Icon(
//           Icons.arrow_back,
//           size: 30.0, 
//           color: Colors.white,// Set the size of the back arrow here
//         ),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//   backgroundColor: Colors.blue,
        
//       ),
// body: Padding(
//   padding: const EdgeInsets.all(15.0),
//   child: Container(
//     height: 410,
//     width: 330,
//     decoration: BoxDecoration(
//       color: const Color.fromARGB(255, 246, 240, 240),
//       borderRadius: BorderRadius.all(Radius.circular(10)),
//       boxShadow: [
//         BoxShadow(
//           offset: Offset(0, 3),
//           color: Colors.black.withOpacity(0.2),
//           blurRadius: 10,
//         )
//       ]
//     ),
//     child: TableCalendar(
//       focusedDay: _focusedDay,
//        firstDay: DateTime(2025), 
//        lastDay:DateTime(2026),
//        calendarFormat: _calendarFormat,
//        startingDayOfWeek: StartingDayOfWeek.monday,
//        rowHeight: 50,
    
//        daysOfWeekHeight: 50,
//        headerStyle: HeaderStyle(
//          titleTextStyle: TextStyle(
//            fontSize: 20,
//            fontWeight: FontWeight.bold,
//          ),
//          formatButtonTextStyle: TextStyle(color: Colors.blue),
//          formatButtonDecoration: BoxDecoration(
//            border: Border.all(color: Colors.blue),
//            borderRadius: BorderRadius.all(Radius.circular(10)),
//          ),
//          leftChevronIcon: Icon(Icons.arrow_back,size: 20,),
//          rightChevronIcon: Icon(Icons.arrow_forward,size: 20,),
    
//        ),
//        daysOfWeekStyle: DaysOfWeekStyle(
//         weekendStyle: TextStyle(color: Colors.red)
//        ),
//        calendarStyle: CalendarStyle(
//         todayDecoration: BoxDecoration(
//           color: Colors.amber,
//           shape: BoxShape.circle,
//         ),
//         selectedDecoration: BoxDecoration(
//           color: Colors.blue,
//           shape: BoxShape.circle
//         )
//        ),
    
//        onDaySelected: (selectedDay, focusedDay){
//         if (!isSameDay(_selectedDay, _focusedDay)){
//           setState(() {
//             _selectedDay = selectedDay;
//             _focusedDay = focusedDay;
//           });
//         }
//        },
//        selectedDayPredicate: (day){
//         return isSameDay(day, _selectedDay);
    
//        } ,
//        onFormatChanged: (format) {
//         if(_calendarFormat!=format){
//           setState(() {
//             _calendarFormat = format;
//           });
//         }
//        },
//        onPageChanged: (focusedDay){
//         setState(() {
//           _focusedDay = focusedDay;
//         });
    
//        },
    
    
       
//       ),
//   ),
// ),


//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:table_calendar/table_calendar.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // This will hold the reason text
  String _reason = "";

  // Controller for the text input in the bottom sheet
  TextEditingController _reasonController = TextEditingController();
  TextEditingController _dateController = TextEditingController(); // Declare this for the date input

  // Show bottom sheet to add reasons
  void _showAddReasonBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),  // Top left corner rounded
          topRight: Radius.circular(20.0), // Top right corner rounded
        ),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            height: 340,
            child: Column(
              children: [
                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13, left: 10),
                      child: Text(
                        'Date',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () async {
                      // Show the date picker
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2025),
                        lastDate: DateTime(2026),
                      );
          
                      if (datePicked != null) {
                        // Update the date controller with the selected date
                        setState(() {
                          _dateController.text = "${datePicked.toLocal()}".split(' ')[0];
                        });
                      }
                    },
                    child: AbsorbPointer(
                      child: TextFormField(
                        controller: _dateController, // Use the correct controller
                        decoration: InputDecoration(
                          hintText: 'Select Date',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        'Detailed Explanation',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _reasonController,
                    decoration: InputDecoration(
                      labelText: 'Type here..',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _reason = _reasonController.text; // Save the reason
                        });
                        Navigator.pop(context); // Close the bottom sheet
                      },
                      child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 14)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Attendance',
            style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              icon: Icon(Icons.add, size: 30.0, color: Colors.white),
              onPressed: _showAddReasonBottomSheet, // Show bottom sheet when Add icon is clicked
            ),
          ),
        ],
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 410,
              width: 330,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 240, 240),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime(2025),
                lastDay: DateTime(2026),
                calendarFormat: _calendarFormat,
                startingDayOfWeek: StartingDayOfWeek.monday,
                rowHeight: 50,
                daysOfWeekHeight: 50,
                headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  titleCentered: true,
                  formatButtonVisible: false, // Hide the format button (month/week)
                  leftChevronVisible: false,  // Hide the left chevron (navigation)
                  rightChevronVisible: false, // Hide the right chevron (navigation)
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekendStyle: TextStyle(color: Colors.red),
                ),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                selectedDayPredicate: (day) {
                  return isSameDay(day, _selectedDay);
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            if (_selectedDay != null)
              Container(
                height: 90,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 328,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 191, 226, 255),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10) ,
                              topRight: Radius.circular(10) ,
                      
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Reasons for: ${_selectedDay?.toLocal().toString().split(' ')[0]}',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Reasons: ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: _reason.isEmpty
                                      ? 'No reasons available'
                                      : _reason,
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

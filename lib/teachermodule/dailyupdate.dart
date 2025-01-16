import 'package:flutter/material.dart';

class Dailyupdate extends StatefulWidget {
  const Dailyupdate({super.key});

  @override
  State<Dailyupdate> createState() => _DailyupdateState();
}

class _DailyupdateState extends State<Dailyupdate> {
  String? selectedClass;
  String? selectedSubject;
  String? selectedPoint;

  List<String> Class=['10A','10B'];
  List<String> Subject=['Marathi','Sports','Mathematics'];
  List<String> Point=['Abc','xyz'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 80,
        title: Text('Daily Update',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30,left: 10),
        padding: EdgeInsets.all(11),
        height: 250,
        width: 340,
      
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)
          ,boxShadow: [
            BoxShadow( color: Colors.grey.withOpacity(0.5), // Shadow color
      spreadRadius: 2, // Spread radius
      blurRadius: 5, // Blur radius
      offset: Offset(0, 3), )// Shadow position (x, y))
          ]
        ),
        child: Column(
          children: [ SizedBox(height: 10,),
            Row( children: [Text('13 january 2025'),SizedBox(width: 70,), Text('10:36 AM') ],  ),
            SizedBox(height: 20,),
            Row(children: [
              DropdownButton<String>(
                hint: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(selectedClass ?? "Class"),
                    ),
                     value: selectedClass,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedClass = newValue;
                      });
                    }, items:
                        Class.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text( 'Class- '+value),
                      );
                    }).toList(),
              ),SizedBox(width: 25,),
               DropdownButton<String>(
                hint: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(selectedSubject ?? "Subject"),
                    ),
                     value: selectedSubject,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedSubject = newValue;
                      });
                    }, items:
                        Subject.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text( value),
                      );
                    }).toList(),
              )
      
            ],)
           , Row(
            children: [
              DropdownButton<String>(
                hint: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(selectedPoint ?? "Point"),
                    ),
                     value: selectedPoint,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedPoint = newValue;
                      });
                    }, items:
                        Point.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text( value),
                      );
                    }).toList(),
              ),SizedBox(width: 70,),
              Text('select Points'),
            ],
           ),SizedBox(height: 30,),
           ElevatedButton(onPressed: (){},
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
            ),
            
          ],
        ),
      ),
    );
  }
}
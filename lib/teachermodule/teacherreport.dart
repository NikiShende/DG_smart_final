import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class Teacherreport extends StatefulWidget {
  const Teacherreport({super.key});

  @override
  State<Teacherreport> createState() => _TeacherreportState();
}

class _TeacherreportState extends State<Teacherreport> {
   String? selectedClass;
   String? selectedDiv;

  List<String> Class=['8','9','10'];
  List<String> Div =['A','B','C','D'];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 70,
      title: Text('Report',style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
SizedBox(height: 110,),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(border: Border.all(),
                  borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(selectedClass ?? " Class",style: TextStyle(fontSize: 18),),
                        ),
                        // underline: Container(),
                        value: selectedClass,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedClass = newValue;
                          });
                        },
                        items:
                            Class.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                ),SizedBox(width: 50,),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(border: Border.all(),
                  borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(selectedDiv ?? "Division",style: TextStyle(fontSize: 18),),
                        ),
                        // underline: Container(),
                        value: selectedDiv,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDiv = newValue;
                          });
                        },
                        items:
                            Div.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
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
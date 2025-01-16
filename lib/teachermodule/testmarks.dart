import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class Testmarks extends StatefulWidget {
  const Testmarks({super.key});

  @override
  State<Testmarks> createState() => _TestmarksState();
}

class _TestmarksState extends State<Testmarks> {
    String? selectedClass;
   String? selectedSubject;
   String? selectedTest;

  List<String> Class=['10A','10B'];
  List<String> Subject=['Marathi','Sports','Mathematics'];
  List<String> Test =['Unit Test-1','Unit Test-2','Unit Test-3','Unit Test-4'];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Marks',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        toolbarHeight: 70,
        foregroundColor: Colors.white,
        backgroundColor:primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Container(
                    height: 50,
                    width: 79,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 199, 199, 199),width: 1),
                      borderRadius: BorderRadius.circular(5)
                  
                    ),
                   
                    child: DropdownButton<String>(
                    hint: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(selectedClass ?? "Class",style: TextStyle(fontSize: 18),),
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
                            child: Text( value),
                          );
                        }).toList(),
                                  ),
                  ),
                ),SizedBox(width: 15,),
               Container(
                 height: 50,
                  width: 120,
                   decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 199, 199, 199),width: 1),
                    borderRadius: BorderRadius.circular(5)

                  ),
                 
                 
                 child: DropdownButton<String>(
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selectedSubject ?? "Subject",style: TextStyle(fontSize: 18),),
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
                               ),
               ),SizedBox(width: 10,),
              Container(
                 height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 199, 199, 199),width: 1),
                    borderRadius: BorderRadius.circular(5)

                  ),
                 
                 
                 child: DropdownButton<String>(
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selectedTest ?? "Test",style: TextStyle(fontSize: 18),),
                  ),
                       value: selectedTest,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTest = newValue;
                        });
                      }, items:
                          Test.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text( value),
                        );
                      }).toList(),
                               ),
               )

              ],
            )
            ,SizedBox(height: 20,)
            
            ,Container(
              margin: EdgeInsets.all(10),
              child: Table(
              border: TableBorder(
                horizontalInside: BorderSide(color: Colors.grey.shade300, width: 1),
                verticalInside: BorderSide(color: Colors.grey.shade300, width: 1),
                borderRadius: BorderRadius.circular(10),
                top: BorderSide(color: const Color.fromARGB(255, 93, 89, 89), width: 1.5),
                bottom: BorderSide(color: const Color.fromARGB(255, 97, 95, 95), width: 1.5),
                left: BorderSide(color: const Color.fromARGB(255, 86, 84, 84), width: 1.5),
                right: BorderSide(color: const Color.fromARGB(255, 92, 89, 89), width: 1.5),
              ),
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(1),
              },
              children: [
                // Header Row
                TableRow(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 207, 224, 237),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Roll Number',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Student Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Marks',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                // Data Rows
                for (int i = 0; i < 8; i++) // Loop to reduce redundancy
                  TableRow(
                    decoration: BoxDecoration(
                      color: i % 2 == 0 ? Colors.grey.shade100 : Colors.white,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('R00${i + 1}', textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Priyanka Dube',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '80',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
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
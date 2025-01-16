// import 'package:flutter/material.dart';

// class Teacherhomework extends StatefulWidget {
//   const Teacherhomework({super.key});

//   @override
//   State<Teacherhomework> createState() => _TeacherhomeworkState();
// }

// class _TeacherhomeworkState extends State<Teacherhomework> {
//   String? selectedSubject;
//   String? selectedClass;
//   String? selectedDiv;
//   final int _selectedTabIndex = 0;

//   List<String> subjects = ['Mathematics', 'Sports', 'Marathi'];
//   List<String> classes = ['10', '11', '12'];
//   List<String> divisions = ['A', 'B', 'C'];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 4,
//       child: Scaffold(
//         body: Column(
//           children: [
//            Container(
//             height: 150,
//             decoration: BoxDecoration(
//               color: Colors.lightBlue,
//             ),
            
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(

//                   child: InkWell(
//                     onTap: (){
//                       Navigator.pop(context);
//                     },
//                     child: Icon(Icons.arrow_back,size: 32,color: Colors.white,)),

//                 ),



//                 SizedBox(width: 10,),
//                 Container(
                  
//                   width: 160,
//                   // color: const Color.fromARGB(255, 195, 185, 149),
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Text('Your homework is Here !',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
//                   )
//                   ),
//                   Container(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 42),
//                       child: Image.asset('assets/images/home.png',height: 100,),
//                     ),
//                   )
//               ],
//             ),
//           ),



//             Container(
//               height: 55,
//               width: 380,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 228, 228, 228),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TabBar(isScrollable: true, tabs: [
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Created',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'View',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Pending',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Submitted',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//             // Row for Dropdowns
//             Row(
//               children: [
//                 // Subject Dropdown
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30, top: 20),
//                   child: Container(
//                     height: 50,
//                     width: 130,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: DropdownButton<String>(
//                       hint: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(selectedSubject ?? "Subject"),
//                       ),
//                       underline: Container(),
//                       value: selectedSubject,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedSubject = newValue;
//                         });
//                       },
//                       items: subjects
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20),

//                 // Class Dropdown
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Container(
//                     height: 50,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: DropdownButton<String>(
//                       hint: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(selectedClass ?? "Class"),
//                       ),
//                       underline: Container(),
//                       value: selectedClass,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedClass = newValue;
//                         });
//                       },
//                       items:
//                           classes.map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20),

//                 // Division Dropdown
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Container(
//                     height: 50,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: DropdownButton<String>(
//                       hint: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(selectedDiv ?? "Div"),
//                       ),
//                       underline: Container(),
//                       value: selectedDiv,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedDiv = newValue;
//                         });
//                       },
//                       items: divisions
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class Teacherhomework extends StatefulWidget {
//   const Teacherhomework({super.key});

//   @override
//   State<Teacherhomework> createState() => _TeacherhomeworkState();
// }

// class _TeacherhomeworkState extends State<Teacherhomework> {
//   String? selectedSubject;
//   String? selectedClass;
//   String? selectedDiv;
//   final int _selectedTabIndex = 0;

//   List<String> subjects = ['Mathematics', 'Sports', 'Marathi'];
//   List<String> classes = ['10', '11', '12'];
//   List<String> divisions = ['A', 'B', 'C'];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 4,
//       child: Scaffold(
//         body: Column(
//           children: [
//             SizedBox(
//               height: 150,
//               width: double.infinity,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   SizedBox(
//                     width: 170,
//                     child: Text(
//                       'Your Homework is here !',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   Image.asset('assets/hw.png'),
//                 ],
//               ),
//             ),
//             Container(
//               height: 55,
//               width: 380,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 228, 228, 228),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TabBar(isScrollable: true, tabs: [
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Created',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'View',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Pending',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color.fromARGB(255, 247, 27, 27),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Submitted',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//             // Row for Dropdowns
//             Row(
//               children: [
//                 // Subject Dropdown
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30, top: 20),
//                   child: Container(
//                     height: 50,
//                     width: 130,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: DropdownButton<String>(
//                       hint: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(selectedSubject ?? "Subject"),
//                       ),
//                       underline: Container(),
//                       value: selectedSubject,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedSubject = newValue;
//                         });
//                       },
//                       items: subjects
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20),

//                 // Class Dropdown
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Container(
//                     height: 50,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: DropdownButton<String>(
//                       hint: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(selectedClass ?? "Class"),
//                       ),
//                       underline: Container(),
//                       value: selectedClass,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedClass = newValue;
//                         });
//                       },
//                       items:
//                           classes.map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 20),

//                 // Division Dropdown
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Container(
//                     height: 50,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: DropdownButton<String>(
//                       hint: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(selectedDiv ?? "Div"),
//                       ),
//                       underline: Container(),
//                       value: selectedDiv,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedDiv = newValue;
//                         });
//                       },
//                       items: divisions
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Teacherhomework extends StatefulWidget {
  const Teacherhomework({super.key});

  @override
  State<Teacherhomework> createState() => _TeacherhomeworkState();
}

class _TeacherhomeworkState extends State<Teacherhomework> {
  String? selectedSubject;
  String? selectedClass;
  String? selectedDiv;
  final int _selectedTabIndex = 0;

  List<String> subjects = ['Mathematics', 'Sports', 'Marathi'];
  List<String> classes = ['10', '11', '12'];
  List<String> divisions = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 150,
              
              width: double.infinity,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 170,
                    child: Text(
                      'Your Homework is here !',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Image.asset('assets/hw.png'),
                ],
              ),
            ),
            Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(isScrollable: true, tabs: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 247, 27, 27),
                  ),
                  child: Center(
                    child: Text(
                      'Created',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 247, 27, 27),
                  ),
                  child: Center(
                    child: Text(
                      'View',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 247, 27, 27),
                  ),
                  child: Center(
                    child: Text(
                      'Pending',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 247, 27, 27),
                  ),
                  child: Center(
                    child: Text(
                      'Submitted',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ),
            // Row for Dropdowns
            Row(
              children: [
                // Subject Dropdown
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedSubject ?? "Subject"),
                      ),
                      underline: Container(),
                      value: selectedSubject,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedSubject = newValue;
                        });
                      },
                      items: subjects
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 20),

                // Class Dropdown
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedClass ?? "Class"),
                      ),
                      underline: Container(),
                      value: selectedClass,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedClass = newValue;
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
                SizedBox(width: 20),

                // Division Dropdown
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedDiv ?? "Div"),
                      ),
                      underline: Container(),
                      value: selectedDiv,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDiv = newValue;
                        });
                      },
                      items: divisions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
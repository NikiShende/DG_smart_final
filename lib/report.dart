// import 'package:flutter/material.dart';
// import 'package:flutter_projects/main.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class Report extends StatefulWidget {
//   const Report({super.key});

//   @override
//   State<Report> createState() => _ReportState();
// }

// class _ReportState extends State<Report> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(toolbarHeight: 70,
//         title: Text('Report',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
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
//   backgroundColor: primaryColor,
        
//       ),


//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 130,
//                   // color: Colors.amber,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5.0),
//                     color: const Color.fromARGB(255, 243, 242, 239),
//                     boxShadow: [
//                      BoxShadow(
//                                     color: Colors.grey,
//                                     spreadRadius: 0.6,
//                                     blurRadius: 0.9,
//                                   )
//                     ]
//                   ),
//                   child: const Row(
//                 children: [
//                   SizedBox(width: 40,),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: CircleAvatar(
//                       radius: 45,
//                       backgroundColor: Colors.white,
                    
//                       backgroundImage: AssetImage('assets/images/stud.png'),
                    
//                     ),
//                   ),
                  
//                   Padding(
//                     padding: EdgeInsets.only(left: 40),
//                     child: Column(
//                       children: [
//                           SizedBox(height: 20,),
//                       Text(
//                         ' Priyanka Dube',
//                         style: TextStyle(fontSize: 18,color: Colors.black,),
//                       ),
//                       SizedBox(height: 6,),
//                       Padding(
//                         padding: EdgeInsets.only(right: 3),
//                         child: Text(
//                           'Roll No: R001',
//                           style: TextStyle(fontSize: 18,color: Colors.black),
//                         ),
//                       ),
//                       SizedBox(height: 6,),
//                       Padding(
//                         padding: EdgeInsets.only(right: 21),
//                         child: Text(
//                           'Class: 10A',
//                           style: TextStyle(fontSize: 18, color: Colors.black,),
//                         ),
//                       ),
                    
                    
//                       ],
//                     ),
                    
//                   ),
                
                
                
//                 ],
              
//               ),
              
            
//                 ),
//               ),
//               // Your existing student info code here...
              
//               SizedBox(height: 20),
//               Container(
//                 height: 300,
//                 child: DataTable(
//                   columns: [
//                     DataColumn(label: Text('Subject', style: TextStyle(fontSize: 18))),
//                     DataColumn(label: Text('Percentage', style: TextStyle(fontSize: 18))),
//                     DataColumn(label: Text('Result', style: TextStyle(fontSize: 18))),
//                   ],
//                   rows: [
//                     DataRow(cells: [
//                       DataCell(Text('Mathematics')),
//                       DataCell(Text('81.92')),
//                       DataCell(Text('pass')),
//                     ]),
//                     DataRow(cells: [
//                       DataCell(Text('English')),
//                       DataCell(Text('67.67')),
//                       DataCell(Text('pass')),
//                     ]),
//                     DataRow(cells: [
//                       DataCell(Text('Sport')),
//                       DataCell(Text('0.0')),
//                       DataCell(Text('fail')),
//                     ]),
//                     DataRow(cells: [
//                       DataCell(Text('Marathi')),
//                       DataCell(Text('0.0')),
//                       DataCell(Text('fail')),
//                     ]),
//                     DataRow(cells: [
//                       DataCell(Text('Science')),
//                       DataCell(Text('80.0')),
//                       DataCell(Text('pass')),
//                     ]),
//                     DataRow(cells: [
//                       DataCell(Text('Art')),
//                       DataCell(Text('0.0')),
//                       DataCell(Text('Fail')),
//                     ]),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 70),

//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Your Interest',
//                       style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),

//               // Use a Row to wrap both the CircularChart and the legend
//               Row(
//                 children: [
//                   // Circular Chart
//                   Container(
//                     height: 200,
//                     width: MediaQuery.of(context).size.width * 0.6, // Adjust width to avoid overflow
//                     child: SfCircularChart(
//                       series: <CircularSeries>[
//                         PieSeries<PieData, String>(
//                           dataSource: [
//                             PieData('Mathematics', 81.92),
//                             PieData('English', 67.67),
//                             PieData('Sport', 0.0),
//                             PieData('Marathi', 0.0),
//                             PieData('Science', 80.0),
//                             PieData('Art', 0.0),
//                           ],
//                           xValueMapper: (PieData data, _) => data.category,
//                           yValueMapper: (PieData data, _) => data.value,
//                           pointColorMapper: (PieData data, _) {
//                             switch (data.category) {
//                               case 'Mathematics':
//                                 return Colors.blue;
//                               case 'English':
//                                 return Colors.green;
//                               case 'Sport':
//                                 return Colors.red;
//                               case 'Marathi':
//                                 return Colors.orange;
//                               case 'Science':
//                                 return Colors.purple;
//                               case 'Art':
//                                 return Colors.yellow;
//                               default:
//                                 return Colors.grey;
//                             }
//                           },
//                           dataLabelSettings: DataLabelSettings(isVisible: true),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   // Legend or Color indicators
//                   Expanded( // Wrap this with Expanded to avoid overflow
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               width: 20,
//                               height: 20,
//                               color: Colors.blue,
//                                // Mathematics
//                             ),
//                             SizedBox(width: 10),
//                             Text('Mathematics'),
//                           ],
//                         ),
//                         SizedBox(height: 5,),
//                         Row(
//                           children: [
//                             Container(
//                               width: 20,
//                               height: 20,
//                               color: Colors.green, // English
//                             ),
//                             SizedBox(width: 10),
//                             Text('English'),
//                           ],
//                         ),
//                         SizedBox(height: 5,),
//                         Row(
//                           children: [
//                             Container(
//                               width: 20,
//                               height: 20,
//                               color: Colors.red, // Sport
//                             ),
//                             SizedBox(width: 10),
//                             Text('Sport'),
//                           ],
//                         ),
                        
//                         SizedBox(height: 5,),
//                         Row(
//                           children: [
//                             Container(
//                               width: 20,
//                               height: 20,
//                               color: Colors.orange, // Marathi
//                             ),
//                             SizedBox(width: 10),
//                             Text('Marathi'),
//                           ],
//                         ),
//                         SizedBox(height: 5,),
//                         Row(
//                           children: [
//                             Container(
//                               width: 20,
//                               height: 20,
//                               color: Colors.purple, // Science
//                             ),
//                             SizedBox(width: 10),
//                             Text('Science'),
//                           ],
//                         ),
//                         SizedBox(height: 5,),
//                         Row(
//                           children: [
//                             Container(
//                               width: 20,
//                               height: 20,
//                               color: Colors.yellow, // Art
//                             ),
//                             SizedBox(width: 10),
//                             Text('Art'),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PieData {
//   final String category;
//   final double value;

//   PieData(this.category, this.value);
// }

import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    // Filter out the zero-value subjects
    List<PieData> filteredData = [
      PieData('Mathematics', 81.92),
      PieData('English', 67.67),
      PieData('Sport', 0.0),
      PieData('Marathi', 0.0),
      PieData('Science', 80.0),
      PieData('Art', 0.0),
    ].where((data) => data.value > 0).toList(); // Filter out subjects with value 0

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          'Report',
          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.white, // Set the size of the back arrow here
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color.fromARGB(255, 243, 242, 239),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.6,
                        blurRadius: 0.9,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/images/stud.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              ' Priyanka Dube',
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            SizedBox(height: 6),
                            Padding(
                              padding: EdgeInsets.only(right: 3),
                              child: Text(
                                'Roll No: R001',
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ),
                            ),
                            SizedBox(height: 6),
                            Padding(
                              padding: EdgeInsets.only(right: 21),
                              child: Text(
                                'Class: 10A',
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 300,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Subject', style: TextStyle(fontSize: 18))),
                    DataColumn(label: Text('Percentage', style: TextStyle(fontSize: 18))),
                    DataColumn(label: Text('Result', style: TextStyle(fontSize: 18))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Mathematics')),
                      DataCell(Text('81.92')),
                      DataCell(Text('pass')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('English')),
                      DataCell(Text('67.67')),
                      DataCell(Text('pass')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sport')),
                      DataCell(Text('0.0')),
                      DataCell(Text('fail')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Marathi')),
                      DataCell(Text('0.0')),
                      DataCell(Text('fail')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Science')),
                      DataCell(Text('80.0')),
                      DataCell(Text('pass')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Art')),
                      DataCell(Text('0.0')),
                      DataCell(Text('Fail')),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your Interest',
                      style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Circular Chart
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.6, // Adjust width to avoid overflow
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<PieData, String>(
                          dataSource: filteredData, // Use filtered data
                          xValueMapper: (PieData data, _) => data.category,
                          yValueMapper: (PieData data, _) => data.value,
                          pointColorMapper: (PieData data, _) {
                            switch (data.category) {
                              case 'Mathematics':
                                return Colors.blue;
                              case 'English':
                                return Colors.green;
                              case 'Sport':
                                return Colors.red;
                              case 'Marathi':
                                return Colors.orange;
                              case 'Science':
                                return Colors.purple;
                              case 'Art':
                                return Colors.yellow;
                              default:
                                return Colors.grey;
                            }
                          },
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  // Legend or Color indicators
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.blue, // Mathematics
                            ),
                            SizedBox(width: 10),
                            Text('Mathematics'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.green, // English
                            ),
                            SizedBox(width: 10),
                            Text('English'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.red, // Sport
                            ),
                            SizedBox(width: 10),
                            Text('Sport'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.orange, // Marathi
                            ),
                            SizedBox(width: 10),
                            Text('Marathi'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.purple, // Science
                            ),
                            SizedBox(width: 10),
                            Text('Science'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.yellow, // Art
                            ),
                            SizedBox(width: 10),
                            Text('Art'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PieData {
  final String category;
  final double value;

  PieData(this.category, this.value);
}

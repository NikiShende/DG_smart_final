import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_projects/attendance.dart';
import 'package:flutter_projects/chatbot.dart';
import 'package:flutter_projects/homework.dart';
import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/report.dart';
import 'package:flutter_projects/student_feedback.dart';
import 'package:flutter_projects/student_profile.dart';
import 'package:flutter_projects/syllabus.dart';


class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   bool _isDrawerOpen=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,


      
      drawer: Container(
        width: 270,
        child: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
             
          ),
            
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // ignore: prefer_const_constructors
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: primaryColor,
                 
        
                ),
               
        
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/stud.png'), // Add a profile image (optional)
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hello, Priyanka Dube!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
        
                  ],
        
                ),
              ),
              ListTile(
                leading: Icon(Icons.home,),
                title: Text('Home'),
              ),
              Divider(),
        
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: (){
                   Navigator.push( context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return StudentProfile();
                                  },
                                ),
                              );
                }
                  
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About School'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('settings'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
              ),
              Divider(),
             
        
  
              
            ],
          ),
          
        ),
      ),
      
      

















      body: Column(
        children: [
          InkWell(
            onTap: (){
              _scaffoldKey.currentState?.openDrawer();
              setState(() {
                _isDrawerOpen=!_isDrawerOpen;
              });

            },



            
            child: Container(
              height: 156,
              decoration: const BoxDecoration(
                color: primaryColor
              ),
              child: const Row(
                children: [
                  SizedBox(width: 40,),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
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
                          SizedBox(height: 60,),
                      Text(
                        ' Priyanka Dube',
                        style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.only(right: 3),
                        child: Text(
                          'Roll No: R001',
                          style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.only(right: 21),
                        child: Text(
                          'Class: 10A',
                          style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    
                    
                      ],
                    ),
                    
                  ),
                
                
                
                ],
              
              ),
              
            
              
            ),
          ),



          SizedBox(height: 20,),
           
           Column(
            children: [
              Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homework(),));
                      },
                       child: Container(
                                       height: 120,
                                       width: 169,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(5),
                                         color: const Color.fromARGB(255, 219, 160, 155),
                                        
                                       ),
                                       child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Homework',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 5,),
                                          Image.asset('assets/images/homework.png',height: 70,),
                                           
                                        ],
                                       ),
                                     ),
                     ),
                   ),
              // SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Syllabus()));
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 235, 228, 164),
                     
                    ),
                    child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Syllabus',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Image.asset('assets/images/syllabus.png',height: 70,),
                                           
                                        ],
                                       ),
                  
                  ),
                ),
              ),


                ],
              ),










              Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Chatbot()));
                      },
                       child: Container(
                                       height: 120,
                                       width: 169,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(5),
                                         color: const Color.fromARGB(255, 179, 207, 230),
                                        
                                       ),
                                       child:  Row(
                                        children: [
                                         Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 7),
                                            child: Container(
                                              height: 50,
                                              width: 70,
                                              // color: Colors.amber,
                                              child: Text('Chat Option',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                                          ),
                                          // SizedBox(width: 4,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 28),
                                            child: Image.asset('assets/images/chat.png',height: 92,),
                                          ),
                                           
                                        ],
                                       ),
                                     ),
                     ),
                   ),
              // SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendance()));
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 229, 241, 119),
                     
                    ),
                    child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Container(
                                              width: 87,
                                              height: 50,
                                              // color: Colors.yellow,
                                              child: Text('Attendance Sheet',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                                          ),
                                            
                                          Padding(
                                            padding: const EdgeInsets.only(top: 25),
                                            child: Image.asset('assets/images/attendance.png',height: 59,),
                                          ),
                                           
                                        ],
                                       ),
                  
                  ),
                ),
              ),


                ],
              ),







              Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentFeedback()));
                      },
                       child: Container(
                                       height: 120,
                                       width: 169,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: const Color.fromARGB(255, 244, 204, 143),
                                        
                                       ),
                                       child:  Row(
                                        children: [
                                         Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Feedback',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                          ),
                                          // SizedBox(width: 10,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 25),
                                            child: Image.asset('assets/images/feedback.png',height: 54,),
                                          ),
                                           
                                        ],
                                       ),
                                     ),
                     ),
                   ),
              // SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Report()));
                  },
                  child: Container(
                    height: 120,
                    width: 169,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 159, 236, 246),
                     
                    ),
                    child:  Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 50,left: 5),
                                            child: Text('Report',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 10,),
                                          Image.asset('assets/images/report.png',height: 70,),
                                           
                                        ],
                                       ),
                  
                  ),
                ),
              ),


                ],
              ),
                    Row(
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Container(
                                     height: 120,
                                     width: 169,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(5),
                                       color: const Color.fromARGB(255, 219, 160, 155),
                                      
                                     ),
                                     child:  Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 50,left: 5),
                                          child: Text('Homework',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                        ),
                                        SizedBox(width: 5,),
                                        Image.asset('assets/images/stud.png',height: 70,),
                                         
                                      ],
                                     ),
                                   ),
                   ),
              // SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 120,
                  width: 169,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 235, 228, 164),
                   
                  ),
                  child:  Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 50,left: 5),
                                          child: Text('Syllabus',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                        ),
                                        SizedBox(width: 10,),
                                        Image.asset('assets/images/stud.png',height: 70,),
                                         
                                      ],
                                     ),
                
                ),
              ),


                ],
              ),











             
            ],
           )
         



          
          
        ],
      ),

    );
  }
}


// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_projects/attendance.dart';
// import 'package:flutter_projects/chatbot.dart';
// import 'package:flutter_projects/homework.dart';
// import 'package:flutter_projects/main.dart';
// import 'package:flutter_projects/report.dart';
// import 'package:flutter_projects/student_feedback.dart';
// import 'package:flutter_projects/student_profile.dart';
// import 'package:flutter_projects/syllabus.dart';


// class StudentDashboard extends StatefulWidget {
//   const StudentDashboard({super.key});

//   @override
//   State<StudentDashboard> createState() => _StudentDashboardState();
// }

// class _StudentDashboardState extends State<StudentDashboard> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   bool _isDrawerOpen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,

//       drawer: Container(
//         width: 270,
//         child: Drawer(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(10)),
//           ),
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: const BoxDecoration(
//                   color: primaryColor,
//                 ),
//                 child: Column(
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage('assets/images/stud.png'),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Hello, Priyanka Dube!',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text('Home'),
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.account_circle),
//                 title: Text('Profile'),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (BuildContext context) {
//                         return StudentProfile();
//                       },
//                     ),
//                   );
//                 },
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.info),
//                 title: Text('About School'),
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text('settings'),
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.exit_to_app),
//                 title: Text('Logout'),
//               ),
//               Divider(),
//             ],
//           ),
//         ),
//       ),

//       body: Column(
//         children: [
//           InkWell(
//             onTap: () {
//               _scaffoldKey.currentState?.openDrawer();
//               setState(() {
//                 _isDrawerOpen = !_isDrawerOpen;
//               });
//             },
//             child: Container(
//               height: 156,
//               decoration: const BoxDecoration(color: primaryColor),
//               child: const Row(
//                 children: [
//                   SizedBox(width: 40),
//                   Padding(
//                     padding: EdgeInsets.only(top: 30),
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
//                         SizedBox(height: 60),
//                         Text(
//                           'Priyanka Dube',
//                           style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 6),
//                         Padding(
//                           padding: EdgeInsets.only(right: 3),
//                           child: Text(
//                             'Roll No: R001',
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         SizedBox(height: 6),
//                         Padding(
//                           padding: EdgeInsets.only(right: 21),
//                           child: Text(
//                             'Class: 10A',
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 20),

//           // Cards with alternating colors
//           Column(
//             children: [
//               // First Row
//               Row(
//                 children: [
//                   _buildCard('Homework', 'assets/images/homework.png', 0),
//                   _buildCard('Syllabus', 'assets/images/syllabus.png', 1),
//                 ],
//               ),

//               // Second Row
//               Row(
//                 children: [
//                   _buildCard('Chat Option', 'assets/images/chat.png', 2),
//                   _buildCard('Attendance Sheet', 'assets/images/attendance.png', 3),
//                 ],
//               ),

//               // Third Row
//               Row(
//                 children: [
//                   _buildCard('Feedback', 'assets/images/feedback.png', 4),
//                   _buildCard('Report', 'assets/images/report.png', 5),
//                 ],
//               ),
//               Row(
//                 children: [
//                   _buildCard('Feedback', 'assets/images/feedback.png', 4),
//                   _buildCard('Report', 'assets/images/report.png', 5),
//                 ],
//               ),

//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Method to build each card with alternating colors
//   Widget _buildCard(String title, String image, int index) {
//     // Alternating colors based on index (even or odd)
//     Color cardColor = (index % 2 == 0)
//         ? Color.fromARGB(255, 219, 160, 155) // Color for even index
//         : Color.fromARGB(255, 235, 228, 164); // Color for odd index

//     return Padding(
//       padding: const EdgeInsets.all(7.0),
//       child: InkWell(
//         onTap: () {
//           // Navigate based on the card
//           switch (title) {
//             case 'Homework':
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Homework()));
//               break;
//             case 'Syllabus':
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Syllabus()));
//               break;
//             case 'Chat Option':
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Chatbot()));
//               break;
//             case 'Attendance Sheet':
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()));
//               break;
//             case 'Feedback':
//               Navigator.push(context, MaterialPageRoute(builder: (context) => StudentFeedback()));
//               break;
//             case 'Report':
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Report()));
//               break;
//             default:
//               break;
//           }
//         },
//         child: Container(
//           height: 110,
//           width: 165,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: cardColor,
//           ),
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 50, left: 2),
//                 child: Text(
//                   title,
//                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(width:2),
//               Image.asset(
//                 image,
//                 height: 59,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }









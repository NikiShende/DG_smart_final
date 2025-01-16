import 'package:flutter/material.dart';
import 'package:flutter_projects/Homework.dart';
import 'package:flutter_projects/parentmodule/Chat_Option.dart';
import 'package:flutter_projects/parentmodule/parent_feedback.dart';
import 'package:flutter_projects/parentmodule/parent_feedetails.dart';
import 'package:flutter_projects/parentmodule/parent_notice.dart';
import 'package:flutter_projects/parentmodule/parentchat.dart';

import 'package:flutter_projects/report.dart';

import 'package:flutter_projects/attendance.dart';
import 'package:flutter_projects/student_feedback.dart';
import 'package:flutter_projects/teachermodule/feedetails.dart';

import 'package:flutter_projects/teachermodule/notice.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardScreen();
}

class DashboardScreen extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Uncomment the AppBar section if needed
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {
      //       // Navigator.push(context,MaterialPageRoute(builder: (context)=>Homework())); // Go back to the previous screen
      //     },
      //   ),
      //   ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // Uncomment and implement navigation logic
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Homework()));
              },
              child: Container(
                padding:
                const EdgeInsets.only(top: 50, left: 30, bottom: 26, right: 25),
                color: Colors.blue,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage:
                      AssetImage('assets/images/parentslogo.png'),
                      
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pawar Pratiksha',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Roll Number:R002',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Class:10A',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentFeedetails()));
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
                                            child: Text('Fee Details',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 20,),
                                          Image.asset('assets/images/feedetails.png',height: 70,),
                                           
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Parentchat()));
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
                                              child: Text('Attendance',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Report()));
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
                                            child: Text('Reports',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                          ),
                                          // SizedBox(width: 10,),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 25),
                                            child: Image.asset('assets/images/report.png',height: 54,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentNotice()));
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
                                            child: Text('Notice',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(width: 10,),
                                          Image.asset('assets/images/notice.png',height: 90,),
                                           

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
      ),
    );
  }
}

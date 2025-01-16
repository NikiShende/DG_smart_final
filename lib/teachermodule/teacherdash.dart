import 'package:flutter_projects/teachermodule/feedetails.dart';
import 'package:flutter_projects/teachermodule/created.dart';
import 'package:flutter_projects/teachermodule/dailyupdate.dart';
import 'package:flutter_projects/teachermodule/notice.dart';
import 'package:flutter_projects/teachermodule/teacherattendance.dart';
import 'package:flutter_projects/teachermodule/teacherhomework.dart';
import 'package:flutter_projects/teachermodule/teacherprofile.dart';
import 'package:flutter_projects/teachermodule/teacherreport.dart';
import 'package:flutter_projects/teachermodule/testmarks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class Teacher_Dash extends StatefulWidget {
  const Teacher_Dash({super.key});

  @override
  State<Teacher_Dash> createState() => __Teacher_DashState();
}

class __Teacher_DashState extends State<Teacher_Dash> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, 
      // appBar: AppBar(
      //   toolbarHeight:-23,
      // ),
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
                        backgroundImage: AssetImage('assets/images/teacher.png'), // Add a profile image (optional)
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hello, Pradip sonawane !',
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
                                    return Teacherprofile();
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
      
         
        

     
      body:Column(
        children: [
          InkWell(
            onTap: (){
              _scaffoldKey.currentState?.openDrawer();
              setState(() {
                _isDrawerOpen=!_isDrawerOpen;
              });

            },
            child: Container(
              
              height: 150,
              color: primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/teacher.png',),
                  ), SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Pradip Sonawane',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                      SizedBox(height: 9,),
                      Text('Phone No:124648939',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.white))
                    ],
                  )
                ]
              )
            
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(top: 15,left: 2,right: 2),
            child: SingleChildScrollView(
              
              child: Column(
                children: [
                  Row(
                    
                    
                    children: [
                      InkWell(
                        onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => k()),
                      );
                    },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 120,
                            width: 166,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 219, 160, 155),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(8),
                              
                            child:Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('Homework           ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Image.asset('assets/images/homework.png'),
                              )
                              
                          
                            ],),
                           
                          ),
                        ),
                      ),
                      InkWell(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dailyupdate()),
                      );
                    },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 120,
                            width: 166,
                            decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 235, 228, 164),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(8),
                            
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('Daily Update           ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Image.asset('assets/images/dailyupdate.png'),
                              )
                              
                          
                            ],),
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 2,),
                   Row(
                    
                  
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 120,
                          width: 166,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 179, 207, 230),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(8),
                        
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text('Chat                      ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                            child:  Image.asset('assets/images/chat.png',height: 82,),
                            )
                            
                        
                          ],),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 120,
                          width: 166,
                          decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 229, 241, 119),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(8),
                                             
                          child:InkWell(
                            onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Teacherattendance()),
                        );
                                            },
                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('Attendance              ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child:  Image.asset('assets/images/attendance.png'),
                              )
                              
                            
                            ],),
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 2,),
                   Row(
                    
                    
                    children: [
                      InkWell(
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Teacherreport()),
                      );
                    },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 120,
                            width: 166,
                            decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 244, 204, 143),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(8),
                           
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('Reports                ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                    child:  Image.asset('assets/images/report.png'),
                              )
                              
                          
                            ],),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Testmarks()),
                      );
                    },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 120,
                            width: 166,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 159, 236, 246),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(8),
                           
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('Test marks           ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Image.asset('assets/images/testmark.png')
                              )
                              
                          
                            ],),
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 2,),
                   Row(
                    
                   
                    children: [
                      InkWell(
                        onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Feedetails()),
                      );
                    },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 120,
                            width: 166,
                            decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 219, 160, 155),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(8),
                          
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text('Fee Details           ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Image.asset('assets/images/feedetails.png')
                              )
                              
                          
                            ],),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notice()),
                      );
                    },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 120,
                            width: 166,
                            decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 228, 164),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            
                            child:Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Notice Board           ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Image.asset('assets/images/notice.png',height: 83,)
                              )
                              
                          
                            ],),
                            // padding: EdgeInsets.all(8),
                          ),
                        ),
                      ),
                    ],
                  )
                  
                ],
            
              ),
            
            ),
          )
        ],
      ),
      

    );
  }
}
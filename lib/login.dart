import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_projects/student_dashboard.dart';

class Login extends StatefulWidget {

  final String imagePath;
  const Login({super.key,required this.imagePath});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _text='';
  @override

    Widget build(BuildContext context) {
       if (widget.imagePath == 'assets/images/stud.png') {
      _text = 'Student Login';
    } else if (widget.imagePath == 'assets/images/teacher.png') {
      _text = 'Teacher Login';
    } else if (widget.imagePath == 'assets/images/parents.png') {
      _text = 'Parent Login';
    }
    return Scaffold(
      
      body:
      
      Center(
        
        child: Column(

          children: [
              Container(
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
             
            ),
            
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                  onPressed: () {
                  // Custom back action
                  Navigator.pop(context);
                },),
            
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 130,),

                   Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                        
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.6,
                                    blurRadius: 0.9,
                                  )
                                ]
                                
                              ),
                              child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                widget.imagePath, // Use the passed image path here
                                fit: BoxFit.cover,
                              ),
                              
                            ) ,
                        
                        
                        ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  _text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                )
                
                
               
              ],
            ),
          
          ),

              
           
      
          
           
            SizedBox(height: 25,),
            Container(
                  height: 46,
                  width: 280,
                  
                  child: TextField(
                            
                            decoration: InputDecoration(
                              hintText: 'Enter User Id',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 1.0,
                                ),
                  
                              ),
                            ),
                          ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 46,
                  width: 280,
                  
                  child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 1.0,
                                ),
                  
                              ),
                            ),
                          ),

                ),
                SizedBox(height: 20,),

                Container(
                  height: 46,
                  width: 280,
                  child: ElevatedButton(onPressed: (){
                    // Custom login action
                     Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDashboard()));
                  
                  }, child: Text('SIGN IN',style: TextStyle(fontSize: 17,color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  ),
                )
          ],
        ),
      )
        
       

    );
  }
}



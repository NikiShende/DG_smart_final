import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        leading: Icon(Icons.menu, color: Colors.black,),
        
        backgroundColor: Colors.blue,
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(-40, -250),
              child: Transform.rotate(
                angle: 1.1,
                child: Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(Icons.arrow_back,color: Colors.white,),
                    title: Text('profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
                  ),
                
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -400),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/stud.png'),
              ),
              
            ),
            Transform.translate(
              offset: Offset(0, -400),
              child: Column(
                children: [
                  SizedBox(height:40,),
                   Container(
                    height: 46,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: ' Full Name: ', // Base text style
                        style: TextStyle(fontSize: 16, color: Colors.black), // Default style
                        children: [
                          TextSpan(
                            text: 'Priyanka Dube', 
                            style: TextStyle(fontWeight: FontWeight.bold), // Bold text style
                          ),
                        ],
                      ),
                    ),
                  ),

                      SizedBox(height:15,),
                     Container(
                      height: 46,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: RichText(
                      text: TextSpan(
                        text: 'standard:10A ', // Base text style
                        style: TextStyle(fontSize: 16, color: Colors.black),
                         // Default style
                        children: [
                          TextSpan(
                            text: 'Div :A', 
                            style: TextStyle(fontWeight: FontWeight.bold), // Bold text style
                          ),
                        ],
                      ),
                    ),
                     ),
                      SizedBox(height:15,),
                     Container(
                      height: 46,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: RichText(
                      text: TextSpan(
                        text: 'Roll No: ', // Base text style
                        style: TextStyle(fontSize: 16, color: Colors.black), // Default style
                        children: [
                          TextSpan(
                            text: 'R001', 
                            style: TextStyle(fontWeight: FontWeight.bold), // Bold text style
                          ),
                        ],
                      ),
                    ),
               ),
               SizedBox(height:15,),
                     Container(
                      height: 46,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: RichText(
                      text: TextSpan(
                        text: 'Mobile Number: ', // Base text style
                        style: TextStyle(fontSize: 16, color: Colors.black), // Default style
                        children: [
                          TextSpan(
                            text: '7890346789', 
                            style: TextStyle(fontWeight: FontWeight.bold), // Bold text style
                          ),
                        ],
                      ),
                    ),
               ),
               SizedBox(height:15,),
                     Container(
                      height: 46,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: RichText(
                      text: TextSpan(
                        text: 'Birth Date: ', // Base text style
                        style: TextStyle(fontSize: 16, color: Colors.black), // Default style
                        children: [
                          TextSpan(
                            text: '20/8/2008', 
                            style: TextStyle(fontWeight: FontWeight.bold), // Bold text style
                          ),
                        ],
                      ),
                    ),
               ),
               SizedBox(height:15,),
                     Container(
                      height: 46,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: RichText(
                      text: TextSpan(
                        text: 'Email ID: ', // Base text style
                        style: TextStyle(fontSize: 16, color: Colors.black), // Default style
                        children: [
                          TextSpan(
                            text: 'priyankai@gmail.com', 
                            style: TextStyle(fontWeight: FontWeight.bold), // Bold text style
                          ),
                        ],
                      ),
                    ),
               ),


                    
                  
                ],
              ),
            )
        
        
            
          ],
          
        

        ),
      
      ),

    





      
    );
  }
}
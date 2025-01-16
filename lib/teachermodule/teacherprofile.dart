// import 'package:flutter/material.dart';

// class Teacherprofile extends StatefulWidget {
//   const Teacherprofile({super.key});

//   @override
//   State<Teacherprofile> createState() => _TeacherprofileState();
// }

// class _TeacherprofileState extends State<Teacherprofile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.teal,
//       appBar: AppBar(
//         foregroundColor: Colors.white,
//         toolbarHeight: 50,
//         titleSpacing: 30,
//         title: Text('profile',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
//         backgroundColor: Colors.blue

//       ),
//       body: Column(
//         children: [
//           Transform.translate(
//             offset: Offset(-40, -290),
//             child: Transform.rotate(
//               angle: 1.2,
//               child: Container(
//                 height: 500,
//                 width: double.infinity,
//                 color: Colors.blue,
//                 child: ListTile(
//                   leading: Icon(Icons.arrow_back,color: Colors.white,),
//                   title: Text('profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
//                 ),

//               ),
//             ),
//           ),
//           Expanded(
//             child: Transform.translate(

//               offset: Offset(0, -400),

//               child: Column(
//                 children: [
//               CircleAvatar(
//                 radius: 60,
//                 backgroundImage: AssetImage('assets/avator.png'),
//                 // child: Text('Pradip Sonawane'),
//               ),
//             Text('Pradip Sonawane',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
//             Container(
//               height: 100,
//               width: 700,
//               color: Colors.blue,

//             )

//                 ],
//               )
//             ),
//           ),

//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

class Teacherprofile extends StatefulWidget {
  const Teacherprofile({super.key});

  @override
  State<Teacherprofile> createState() => _TeacherprofileState();
}

class _TeacherprofileState extends State<Teacherprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: 50,
        titleSpacing: 30,
        
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 27),
        ),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          
          Stack(
            
            children:[ 
              Container(
            height: 150,
            width: double.infinity,
            color: primaryColor,
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                SizedBox(height:190,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 46,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                                 child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                         Text(
                              'Full Name:', 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Pradip sonawane', 
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                      ],
                    ),
                                 ),
                                 ),
                 ),
                    
                    SizedBox(height:20,),
                   Container(
                    height: 46,
                    width:310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                           Text(
                            'Education:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'BBA', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                         
                      
                      
                        ],
                      ),
                    ),
                   ),
                   SizedBox(height:20,),
                   Container(
                    height: 46,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                                          children: [
                       Text(
                            'Subject:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Mathematics,Sports and Marathi', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                                          ],
                                        ),
                    ),
             ),
                    SizedBox(height:20,),
                   Container(
                    height: 46,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      // color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                           Text(
                            'ID Number:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'T10', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                                              ],
                      ),
                    ),
             ),
             SizedBox(height:20,),
                   Container(
                    height: 46,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                                          children: [
                       Text(
                            'Mobile Number:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '9999999789', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                                          ],
                                        ),
                    ),
             ),
             
             SizedBox(height:20,),
                   Container(
                    height: 46,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                                          children: [
                       Text(
                            'Birth Date :', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '7/09/1970', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                                          ],
                                        ),
                    ),
             ),
              SizedBox(height:20,),
                   Container(
                    height: 46,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                                          children: [
                       Text(
                            'Email ID :', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'sonawane@gmail.com', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                                          ],
                                        ),
                    ),
             ),
                    
                    
                  
                
              ],
            ),
          ),
      




              Container(
                
            child:Positioned(
              top: 55,
              left: 115,
               
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/teacher.png'),
              ),
            ),
            ),
            ]
          ),
          
          
      
          
        ],
        
      
      
      ),
    );
  }
}

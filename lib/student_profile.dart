import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

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
        foregroundColor: Colors.white,
       
        title: Text(' Profile', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white)),
        
        backgroundColor: primaryColor,
      ),

      body:Column(
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
                              'Priyanka Dube', 
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
                            'Class:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '10', 
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 40,),
                          Text(
                            'Div:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'A', 
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
                            'Roll No:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '54', 
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
                            'Mobille No:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '9875778890', 
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
                            'Birth Date:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '12-3-2002', 
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
                            'Email :', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'priyanka@gmail.com', 
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
                backgroundImage: AssetImage('assets/images/stud.png'),
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
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_projects/main.dart';

// class StudentProfile extends StatefulWidget {
//   const StudentProfile({super.key});

//   @override
//   State<StudentProfile> createState() => _StudentProfileState();
// }

// class _StudentProfileState extends State<StudentProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: Colors.white,
//         title: Text(
//           'Student Profile',
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: primaryColor,
//       ),
//       body: Column(
//         children: [
//           // Stack for Profile Image and Header
//           Stack(
//             children: [
//               Container(
//                 height: 130,
//                 width: double.infinity,
//                 color: primaryColor,
              
//               ),
//               Positioned(
//                 top: 20,
//                 left: MediaQuery.of(context).size.width / 2 - 60,
//                 child: CircleAvatar(
//                   radius: 60,
//                   backgroundImage: AssetImage('assets/images/stud.png'),
//                 ),
//               ),
//             ],
//           ),
          
//           // Student Details Section
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   _buildProfileDetailRow('Full Name:', 'Priyanka Dube'),
//                   SizedBox(height: 20),
//                   _buildClassAndDivRow(),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Roll No:', '54'),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Mobile No:', '9875778890'),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Birth Date:', '12-3-2002'),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Email:', 'priyanka@gmail.com'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper method for creating profile detail rows
//   Widget _buildProfileDetailRow(String title, String value) {
//     return Container(
//       height: 46,
//       width: 310,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(color: Colors.grey, width: 1),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             SizedBox(width: 10),
//             Text(
//               value,
//               style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method for creating Class and Div row
//   Widget _buildClassAndDivRow() {
//     return Container(
//       height: 46,
//       width: 310,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(color: Colors.grey, width: 1),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Text(
//               'Class:',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             SizedBox(width: 10),
//             Text(
//               '10',
//               style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//             ),
//             SizedBox(width: 40),
//             Text(
//               'Div:',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             Text(
//               'A',
//               style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_projects/main.dart';

// class StudentProfile extends StatefulWidget {
//   const StudentProfile({super.key});

//   @override
//   State<StudentProfile> createState() => _StudentProfileState();
// }

// class _StudentProfileState extends State<StudentProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: Colors.white,
//         title: Text(
//           'Student Profile',
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         backgroundColor: primaryColor,
//       ),
//       body: Column(
//         children: [
//           // Stack for Profile Image and Header
//           Stack(
//             children: [
//               // Blue Header Section
//               Container(
//                 height: 180,  // Adjust the height for the header
//                 color: primaryColor,
//               ),
              
//               // Positioned CircleAvatar (profile image)
//               Positioned(
//                 top: 100,  // Adjust the vertical position of the avatar
//                 left: MediaQuery.of(context).size.width / 2 - 60,  // Horizontal center
//                 child: CircleAvatar(
//                   radius: 60, // Adjust the size of the avatar
//                   backgroundImage: AssetImage('assets/images/stud.png'),
//                 ),
//               ),
//             ],
//           ),
          
//           // White Background for Student Details
//           Expanded(
//             child: SingleChildScrollView(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   _buildProfileDetailRow('Full Name:', 'Priyanka Dube'),
//                   SizedBox(height: 20),
//                   _buildClassAndDivRow(),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Roll No:', '54'),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Mobile No:', '9875778890'),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Birth Date:', '12-3-2002'),
//                   SizedBox(height: 20),
//                   _buildProfileDetailRow('Email:', 'priyanka@gmail.com'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper method for creating profile detail rows
//   Widget _buildProfileDetailRow(String title, String value) {
//     return Container(
//       height: 46,
//       width: 310,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(color: Colors.grey, width: 1),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             SizedBox(width: 10),
//             Text(
//               value,
//               style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper method for creating Class and Div row
//   Widget _buildClassAndDivRow() {
//     return Container(
//       height: 46,
//       width: 310,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(color: Colors.grey, width: 1),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Text(
//               'Class:',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             SizedBox(width: 10),
//             Text(
//               '10',
//               style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//             ),
//             SizedBox(width: 40),
//             Text(
//               'Div:',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             Text(
//               'A',
//               style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

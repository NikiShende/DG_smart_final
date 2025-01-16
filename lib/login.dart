import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/parentmodule/parent_dash.dart';
import 'package:flutter_projects/student_dashboard.dart';
import 'package:flutter_projects/teachermodule/teacherdash.dart';

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
              color: primaryColor,
             
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
                                  color: primaryColor,
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
                                  color: primaryColor,
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
                    
                       if (widget.imagePath == 'assets/images/stud.png') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentDashboard()), // Navigate to Student Dashboard
                    );
                  } else if (widget.imagePath == 'assets/images/teacher.png') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teacher_Dash()), // Navigate to Teacher Dashboard
                    );
                  } else if (widget.imagePath == 'assets/images/parents.png') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ParentDashboard()), // Navigate to Parent Dashboard
                    );
                  }
                  
                  }, child: Text('SIGN IN',style: TextStyle(fontSize: 17,color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                  
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














































































































// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter_projects/main.dart';
// import 'package:flutter_projects/student_dashboard.dart';
// import 'package:flutter_projects/teachermodule/teacherdash.dart';

// class Login extends StatefulWidget {
//   final String imagePath;
//   const Login({super.key, required this.imagePath});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   String _text = '';
//   String _hintText = '';  // Variable for dynamic hintText based on login type

//   @override
//   Widget build(BuildContext context) {
//     if (widget.imagePath == 'assets/images/stud.png') {
//       _text = 'Student Login';
//       _hintText = 'Enter Student ID';  // Student-specific hintText
//     } else if (widget.imagePath == 'assets/images/teacher.png') {
//       _text = 'Teacher Login';
//       _hintText = 'Enter Teacher ID';  // Teacher-specific hintText
//     } else if (widget.imagePath == 'assets/images/parents.png') {
//       _text = 'Parent Login';
//       _hintText = 'Enter Parent ID';  // Parent-specific hintText
//     }

//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               height: 250,
//               width: 400,
//               decoration: BoxDecoration(
//                 color: primaryColor,
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(height: 30),
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(
//                           Icons.arrow_back,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                         onPressed: () {
//                           // Custom back action
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(width: 130),
//                       Container(
//                         height: 100,
//                         width: 100,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(50),
//                           border: Border.all(color: Colors.grey),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               spreadRadius: 0.6,
//                               blurRadius: 0.9,
//                             ),
//                           ],
//                         ),
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             // color: Colors.green,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Image.asset(
//                             widget.imagePath, // Use the passed image path here
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     _text,
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25),
//             Container(
//               height: 46,
//               width: 280,
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: _hintText,  // Use dynamic hintText
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(7.0),
//                     borderSide: const BorderSide(
//                       color: primaryColor,
//                       width: 1.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 46,
//               width: 280,
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Enter Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(7.0),
//                     borderSide: const BorderSide(
//                       color: primaryColor,
//                       width: 1.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 46,
//               width: 280,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (widget.imagePath == 'assets/images/stud.png') {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => StudentDashboard(),
//                       ), // Navigate to Student Dashboard
//                     );
//                   } else if (widget.imagePath == 'assets/images/teacher.png') {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Teacher_Dash(),
//                       ), // Navigate to Teacher Dashboard
//                     );
//                   } else if (widget.imagePath == 'assets/images/parents.png') {
//                     // Navigate to Parent Dashboard (when implemented)
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(builder: (context) => ParentDashboard()),
//                     // );
//                   }
//                 },
//                 child: Text(
//                   'SIGN IN',
//                   style: TextStyle(fontSize: 17, color: Colors.white),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: primaryColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_projects/main.dart';
// import 'package:flutter_projects/student_dashboard.dart';
// import 'package:flutter_projects/teachermodule/teacherdash.dart';
// import 'package:http/http.dart' as http;


// class Login extends StatefulWidget {
//   final String imagePath;
//   const Login({super.key, required this.imagePath});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   String _text = '';
//   String _hintText = '';  // Variable for dynamic hintText based on login type

//   final TextEditingController _idController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     if (widget.imagePath == 'assets/images/stud.png') {
//       _text = 'Student Login';
//       _hintText = 'Enter Student ID';  // Student-specific hintText
//     } else if (widget.imagePath == 'assets/images/teacher.png') {
//       _text = 'Teacher Login';
//       _hintText = 'Enter Teacher ID';  // Teacher-specific hintText
//     } else if (widget.imagePath == 'assets/images/parents.png') {
//       _text = 'Parent Login';
//       _hintText = 'Enter Parent ID';  // Parent-specific hintText
//     }

//     return Scaffold(
//       body: Center(
//         child: Column(
          
//           children: [
//             Container(
//               height: 250,
//               width: 400,
//               decoration: BoxDecoration(
//                 color: primaryColor,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(height: 30),
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(
//                           Icons.arrow_back,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundColor: Colors.white,
//                     backgroundImage: AssetImage(widget.imagePath),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     _text,
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25),
//             Container(
//               height: 46,
//               width: 280,
//               child: TextField(
//                 controller: _idController,
//                 decoration: InputDecoration(
//                   hintText: _hintText,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(7.0),
//                     borderSide: BorderSide(color: primaryColor, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 46,
//               width: 280,
//               child: TextField(
                
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
                  
//                   hintText: 'Enter Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(7.0),
//                     borderSide: BorderSide(color: primaryColor, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             _isLoading
//                 ? CircularProgressIndicator()
//                 : Container(
//                   height: 46,
//                   width: 280,
//                   child: ElevatedButton(
//                       onPressed: _handleLogin,
//                       child: Text(
//                         'SIGN IN',
//                         style: TextStyle(fontSize: 17, color: Colors.white),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                       ),
//                     ),
//                 ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _handleLogin() async {
//     if (_idController.text.isEmpty || _passwordController.text.isEmpty) {
//       _showError('Please enter both ID and Password');
//       return;
//     }

//     setState(() {
//       _isLoading = true;
//     });

//     // Simulating an API call with a delay
//     await Future.delayed(Duration(seconds: 2));

//     // Here you would call your API to validate the credentials
//     bool loginSuccess = false;

//     // Dummy validation for Student (you would replace this with actual API logic)
//     if (widget.imagePath == 'assets/images/stud.png' &&
//         _idController.text == 'student123' &&
//         _passwordController.text == 'password') {
//       loginSuccess = true;
//     } else if (widget.imagePath == 'assets/images/teacher.png' &&
//         _idController.text == 'teacher123' &&
//         _passwordController.text == 'password') {
//       loginSuccess = true;
//     } else if (widget.imagePath == 'assets/images/parents.png' &&
//         _idController.text == 'parent123' &&
//         _passwordController.text == 'password') {
//       loginSuccess = true;
//     }

//     setState(() {
//       _isLoading = false;
//     });

//     if (loginSuccess) {
//       if (widget.imagePath == 'assets/images/stud.png') {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => StudentDashboard(),
//           ),
//         );
//       } else if (widget.imagePath == 'assets/images/teacher.png') {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => Teacher_Dash(),
//           ),
//         );
//       } else if (widget.imagePath == 'assets/images/parents.png') {
//         // Navigate to Parent Dashboard (when implemented)
//         // Navigator.pushReplacement(
//         //   context,
//         //   MaterialPageRoute(builder: (context) => ParentDashboard()),
//         // );
//         _showError('Parent dashboard is under construction.');
//       }
//     } else {
//       _showError('Invalid credentials. Please try again.');
//     }
//   }

//   void _showError(String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Error'),
//           content: Text(message),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }



// import 'dart:io';

// import 'package:cookie_jar/cookie_jar.dart';
// import 'package:dio/dio.dart';
// import 'package:dio_cookie_manager/dio_cookie_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smart_school/Teachermodule/teacherDashboard.dart';
// import 'package:smart_school/baseurl.dart';
// import 'package:smart_school/student_dashboard.dart';

// import 'ParentsModule/SelectStudentDashboard.dart';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class StudLogin extends StatefulWidget {
//   final String collegeCode;
//   final String fcm;

//   const StudLogin({Key? key, required this.collegeCode, required this.fcm})
//       : super(key: key);

//   @override
//   State<StudLogin> createState() => _StudLoginState();
// }

// class _StudLoginState extends State<StudLogin> {
//   late Future<Map<String, dynamic>> collegeCode;

//   final _schoolCodeController = TextEditingController();
//   final _usernameController = TextEditingController();
//   final _passwordController =TextEditingController(); // Controller for password
//   bool _isLoading = false;
//   String _selectedRole = 'Student';
//   final storage = FlutterSecureStorage();

//   @override
//   void initState() {
//     super.initState();
//     print("Akshada -----> ${widget.fcm}");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   SizedBox(height: 100),
//                   Center(
//                     child: Image.asset(
//                       'assets/background 3.png',
                      
//                       height: 100,
//                     ),
//                   ),
//                   const SizedBox(height: 40),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               _selectedRole = 'Student';
//                             });
//                           },
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: _selectedRole == 'Student'
//                                 ? Colors.white
//                                 : Colors.black,
//                             backgroundColor: _selectedRole == 'Student'
//                                 ? Colors.blue
//                                 : Colors.white,
//                           ),
//                           child: const Text(
//                             'Student',
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               _selectedRole = 'Parents';
//                             });
//                           },
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: _selectedRole == 'Parents'
//                                 ? Colors.white
//                                 : Colors.black,
//                             backgroundColor: _selectedRole == 'Parents'
//                                 ? Colors.blue
//                                 : Colors.white,
//                           ),
//                           child: const Text(
//                             'Parents',
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               _selectedRole = 'Teacher';
//                             });
//                           },
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: _selectedRole == 'Teacher'
//                                 ? Colors.white
//                                 : Colors.black,
//                             backgroundColor: _selectedRole == 'Teacher'
//                                 ? Colors.blue
//                                 : Colors.white,
//                           ),
//                           child: const Text(
//                             'Teacher',
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
                  
//                   _getLoginWidget(),
//                   const SizedBox(height: 20),
//                 ],
//               ),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * 0.2),
//             Container(
//               //   color: Colors.grey[100],
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'Powered by',
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'DreamsGuider.com',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     'Software | Education | Advertising',
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget studentlogin() {
//     return Container(
//       padding: const EdgeInsets.all(16.0), // Add padding if needed
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment
//             .stretch, // Stretch children to match parent width
//         children: [
//           TextField(
//             controller: _usernameController,
//             decoration: InputDecoration(
//               hintText: 'Enter Student Id',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: const BorderSide(
//                   color: Colors.blue,
//                   width: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           TextField(
//             controller: _passwordController,
//             decoration: InputDecoration(
//               hintText: 'Enter Password',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: const BorderSide(
//                   color: Colors.blue,
//                   width: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           SizedBox(
//             height: 50,
//             child: ElevatedButton(
              
//               // onPressed: _isLoading ? null : login(widget.collegeCode)
//               onPressed: _isLoading
//                   ? null
//                   : () async {
//                       String code = (widget.collegeCode);
//                       String fcm = (widget.fcm);
//                       login(code, fcm);
//                       print(code);
//                       print(fcm);
//                     },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Color.fromARGB(255, 1, 63, 113),
//               ),
//               child: _isLoading
//                   ? const SizedBox(
//                       height: 16.0,
//                       width: 16.0,
//                       child: CircularProgressIndicator(
//                         color: Colors.blue,
//                         strokeWidth: 2.0,
//                       ),
//                     )
//                   : const Text('SIGN IN'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget parentslogin() {
//     return Container(
//       padding: const EdgeInsets.all(16.0), // Add padding if needed
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment
//             .stretch, // Stretch children to match parent width
//         children: [
//           TextField(
//             controller: _usernameController,
//             decoration: InputDecoration(
//               hintText: 'Enter Parent Id',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: const BorderSide(
//                   color: Colors.blue,
//                   width: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           TextField(
//             controller: _passwordController,
//             decoration: InputDecoration(
//               hintText: 'Enter  Password',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: const BorderSide(
//                   color: Colors.blue,
//                   width: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           SizedBox(
//             height: 50 ,
//             child: ElevatedButton(
//               onPressed: _isLoading
//                   ? null
//                   : () async {
//                       String code = (widget.collegeCode);
//                       String fcm = (widget.fcm);
//                       parentsLogin(code, fcm);
//                     },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: const Color.fromARGB(255, 1, 63, 113),
//               ),
//               child: _isLoading
//                   ? const SizedBox(
//                       height: 16.0,
//                       width: 16.0,
//                       child: CircularProgressIndicator(
//                         color: Colors.blue,
//                         strokeWidth: 2.0,
//                       ),
//                     )
//                   : const Text('SIGN IN'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget teacherlogin() {
//     return Container(
//       padding: const EdgeInsets.all(16.0), // Add padding if needed
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment
//             .stretch, // Stretch children to match parent width
//         children: [
//           TextField(
//             controller: _usernameController,
//             decoration: InputDecoration(
//               hintText: 'Enter Teacher Id',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: const BorderSide(
//                   color: Colors.blue,
//                   width: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           TextField(
//             controller: _passwordController,
//             decoration: InputDecoration(
//               hintText: 'Enter Password ',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: const BorderSide(
//                   color: Colors.blue,
//                   width: 2.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           SizedBox(
//             height: 50,
//             child: ElevatedButton(
//               onPressed: _isLoading
//                   ? null
//                   : () async {
//                       String code = (widget.collegeCode);
//                       String fcm = (widget.fcm);
//                       teacherLogin(code, fcm);
//                     },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: const Color.fromARGB(255, 1, 63, 113),
//               ),
//               child: _isLoading
//                   ? const SizedBox(
//                       height: 16.0,
//                       width: 16.0,
//                       child: CircularProgressIndicator(
//                         color: Colors.blue,
//                         strokeWidth: 2.0,
//                       ),
//                     )
//                   : const Text('SIGN IN'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _getLoginWidget() {
//     switch (_selectedRole) {
//       case 'Parents':
//         return parentslogin();
//       case 'Teacher':
//         return teacherlogin();
//       case 'Student':
//       default:
//         return studentlogin();
//     }
//   }

//   void showCustomSnackBar(
//       BuildContext context, String message, Color backgroundColor) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Center(
//           child: Text(
//             message,
//             style: const TextStyle(fontSize: 16.0),
//           ),
//         ),
//         behavior: SnackBarBehavior.floating,
//         margin: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
//         backgroundColor: backgroundColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//       ),
//     );
//   }

//   void login(String collegeCode, String fcm) async {
//     print('11111');
//     Dio dio = Dio();

//     // Set up the CookieJar
//     var cookieJar = CookieJar();
//     dio.interceptors.add(CookieManager(cookieJar));

//     try {
//       setState(() {
//         _isLoading = true; // Start the loader
//       });

//       String username = _usernameController.text;
//       String password = _passwordController.text;

//       Map<String, dynamic> queryParameters = {
//         "college_code": collegeCode,
//       };

//       Map<String, String> body = {
//         "studentId": username,
//         "password": password,
//         "fcm_token": fcm,
//       };

//       print(username);
//       print(collegeCode);
//       print(password);

//       Response response = await dio.post(studLoginUri,
//           data: body, queryParameters: queryParameters);

//       if (response.statusCode == 200) {
//         print(response.data);
//         if (response.data == null) {
//           print('Error: Response data is null');
//           return;
//         }

//         if (response.data is! Map<String, dynamic>) {
//           print('Error: Response data is not a Map');
//           print('Response data: ${response.data}');
//           return;
//         }

//         // Retrieve cookies
//         List<Cookie> cookies =
//             await cookieJar.loadForRequest(Uri.parse(studLoginUri));
//         String? authToken;

//         for (var cookie in cookies) {
//           if (cookie.name == 'auth_token') {
//             authToken = cookie.value;
//             break;
//           }
//         }

//         if (authToken != null) {
//           print('Auth Token: $authToken');
//           // Save auth token to shared preferences or secure storage
//           saveAuthToken(authToken);
//         } else {
//           print('Auth token not found in cookies');
//         }

//         Map<String, dynamic> responseData = response.data;

//         if (responseData['success'] == true) {
//           if (responseData.containsKey('data') &&
//               responseData['data'] is Map<String, dynamic>) {
//             Map<String, dynamic> userDataMap = responseData['data'];
//             try {
//               UserData userData = UserData.fromJson(userDataMap);
//               saveUserData(userData);
//               showCustomSnackBar(context, 'Login Successful !', Colors.green);
//               Navigator.of(context).pushAndRemoveUntil(
//                 MaterialPageRoute(
//                   builder: (context) => StudDashboard(userData: userData),
//                 ),
//                 (route) => false, // Remove all previous routes
//               );
//             } catch (e) {
//               showCustomSnackBar(context, 'Login Failed ', Colors.red);
//               print('Error parsing user data: $e');
//             }
//           } else {
//             showCustomSnackBar(context, 'Login Failed ', Colors.red);

//             print('Error: Data field is missing or not a Map');
//             print('Response data: ${responseData['data']}');
//           }
//         } else {
//           print('Login failed');
//           showCustomSnackBar(context, 'Login Failed  ', Colors.red);

//           if (responseData.containsKey('message')) {
//             print('Error message: ${responseData['message']}');
//           }
//         }
//       } else {
//         showCustomSnackBar(context, 'Login Failed ', Colors.red);

//         print('Error - ${response.statusCode}');
//       }
//     } catch (e) {
//       showCustomSnackBar(context, 'Invalid Credential', Colors.red);

//       print('Exception - $e');
//     } finally {
//       setState(() {
//         _isLoading = false; // Stop the loader
//       });
//     }
//   }

//   void saveAuthToken(String authToken) async {
//     await storage.write(key: 'auth_token', value: authToken);
//   }

//   Future<String?> getAuthToken() async {
//     return await storage.read(key: 'auth_token');
//   }

//   Future<void> teacherLogin(String collegeCode, String fcm) async {
//     print('11111');
//     Dio dio = Dio();
//     // Set up the CookieJar

//     var cookieJar = CookieJar();

//     dio.interceptors.add(CookieManager(cookieJar));
//     try {
//       setState(() {
//         _isLoading = true; // Start the loader
//       });

//       String username = _usernameController.text;
//       String password = _passwordController.text;

//       Map<String, dynamic> queryParameters = {
//         "college_code": collegeCode,
//       };

//       Map<String, String> body = {
//         "teacher_code": username,
//         "tpassword": password,
//         "fcm_token": fcm
//       };

//       print(username);
//       print(collegeCode);
//       print(password);

//       Response response = await dio.post(teacherLoginurl,
//           data: body, queryParameters: queryParameters);

//       if (response.statusCode == 200) {
//         print(response.data);
//         if (response.data == null) {
//           print('Error: Response data is null');
//           return;
//         }

//         if (response.data is! Map<String, dynamic>) {
//           print('Error: Response data is not a Map');
//           print('Response data: ${response.data}');
//           return;
//         }
//         // Retrieve cookies

//         List<Cookie> cookies =
//             await cookieJar.loadForRequest(Uri.parse(teacherLoginurl));

//         String? authToken;

//         for (var cookie in cookies) {
//           if (cookie.name == 'auth_token') {
//             authToken = cookie.value;

//             break;
//           }
//         }

//         if (authToken != null) {
//           print('Auth Token: $authToken');

//           // Save auth token to shared preferences or secure storage

//           saveAuthToken(authToken);
//         } else {
//           print('Auth token not found in cookies');
//         }
//         Map<String, dynamic> responseData = response.data;

//         if (responseData['success'] == true) {
//           if (responseData.containsKey('data') &&
//               responseData['data'] is Map<String, dynamic>) {
//             Map<String, dynamic> tuserDataMap = responseData['data'];
//             try {
//               TeacherData teacherData = TeacherData.fromJson(tuserDataMap);
//               tsaveUserData(
//                   teacherData); // Save user data to shared preferences
//               showCustomSnackBar(context, 'Login Successful !', Colors.green);
//               Navigator.of(context).pushAndRemoveUntil(
//                 MaterialPageRoute(
//                   builder: (context) => teacherdash(teacherData: teacherData),
//                 ),
//                 (route) => false, // Remove all previous routes
//               );
//             } catch (e) {
//               showCustomSnackBar(context, 'Login Failed ', Colors.red);
//               print('Error parsing user data: $e');
//             }
//           } else {
//             showCustomSnackBar(context, 'Login Failed  ', Colors.red);
//             print('Error: Data field is missing or not a Map');
//             print('Response data: ${responseData['data']}');
//           }
//         } else {
//           showCustomSnackBar(context, 'Login Failed  ', Colors.red);
//           print('Login failed');
//           if (responseData.containsKey('message')) {
//             print('Error message: ${responseData['message']}');
//           }
//         }
//       } else {
//         showCustomSnackBar(context, 'Login Failed ', Colors.red);
//         print('Error - ${response.statusCode}');
//       }
//     } catch (e) {
//       showCustomSnackBar(context, 'Invalid Credential', Colors.red);
//       print('Exception - $e');
//     } finally {
//       setState(() {
//         _isLoading = false; // Stop the loader
//       });
//     }
//   }

//   Future<void> parentsLogin(String collegeCode, String fcm) async {
//     print('11111');
//     Dio dio = Dio();

//     try {
//       setState(() {
//         _isLoading = true; // Start the loader
//       });

//       String username = _usernameController.text;
//       String password = _passwordController.text;

//       Map<String, dynamic> queryParameters = {
//         "college_code": collegeCode,
//       };

//       Map<String, String> body = {
//         "parent_id": username,
//         "password": password,
//         "fcm_token": fcm
//       };

//       print('Username: $username');
//       print('College Code: $collegeCode');
//       print('Password: $password');

//       String url = '$parentsLoginurl?college_code=$collegeCode';
//       print('Request URL: $url');
//       print('Request Body: $body');

//       Response response = await dio.post(parentsLoginurl,
//           data: body, queryParameters: queryParameters);

//       if (response.statusCode == 200) {
//         print('Response Data: ${response.data}');
//         if (response.data == null) {
//           print('Error: Response data is null');
//           return;
//         }

//         if (response.data is! Map<String, dynamic>) {
//           print('Error: Response data is not a Map');
//           print('Response data: ${response.data}');
//           return;
//         }

//         Map<String, dynamic> responseData = response.data;

//         if (responseData['success'] == true) {
//           if (responseData.containsKey('data') &&
//               responseData['data'] is Map<String, dynamic>) {
//             Map<String, dynamic> puserDataMap = responseData['data'];
//             try {
//               ParentsData parentsData = ParentsData.fromJson(puserDataMap);
//               psaveUserData(parentsData);
//               print('Akshada');
//               print(parentsData.address);
//               print(parentsData.parentname);
//               print(parentsData
//                   .pmobile_no); // Save user data to shared preferences
//               showCustomSnackBar(context, 'Login Successful !', Colors.green);
//               Navigator.of(context).pushAndRemoveUntil(
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       selectStudentDash(parentsData: parentsData),
//                 ),
//                 (route) => false, // Remove all previous routes
//               );
//             } catch (e) {
//               showCustomSnackBar(context, 'Login Failed ', Colors.red);

//               print('Error parsing user data: $e');
//             }
//           } else {
//             showCustomSnackBar(context, 'Login Failed ', Colors.red);

//             print('Error: Data field is missing or not a Map');
//             print('Response data: ${responseData['data']}');
//           }
//         } else {
//           showCustomSnackBar(context, 'Login Failed ', Colors.red);

//           print('Login failed');
//           if (responseData.containsKey('message')) {
//             print('Error message: ${responseData['message']}');
//           }
//         }
//       } else {
//         showCustomSnackBar(context, 'Login Failed ', Colors.red);

//         print('Error - ${response.statusCode}');
//       }
//     } catch (e) {
//       showCustomSnackBar(context, 'Invalid Credential', Colors.red);

//       print('Exception - $e');
//     } finally {
//       setState(() {
//         _isLoading = false; // Stop the loader
//       });
//     }
//   }

//   void saveUserData(UserData userData) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString('studentid', userData.studId);
//     prefs.setString('Name', userData.studName);
//     prefs.setString('roll_no', userData.studRollNo);
//     prefs.setString('std', userData.studStd);
//     prefs.setString('profile_img', userData.photo);
//     prefs.setString('division', userData.studDiv);
//     prefs.setString('college_code', userData.collegeCode);

//     //  prefs.setString('college_code',userData.collegeCode);
//     print(userData.studName);
//     print(userData.studRollNo);
//     print(userData.studStd);
//   }
// }

// class ParentsData {
//   final String parentId;
//   final String parentname;
//   final String pmobile_no;
//   final String profilephoto;
//   final String address;
//   final String collegeCode;

//   ParentsData(
//       {required this.parentId,
//       required this.parentname,
//       required this.pmobile_no,
//       required this.profilephoto,
//       required this.address,
//       required this.collegeCode,
//       String? collegecode});
//   factory ParentsData.fromJson(Map<String, dynamic> json) {
//     return ParentsData(
//       parentId: json['parent_id'] ?? '',
//       parentname: json['parentname'] ?? '',
//       pmobile_no: json['pmobile_no'] ?? '',
//       profilephoto: json['profilephoto'] ?? '',
//       address: json['address'] ?? '',
//       collegeCode: json['college_code'] ?? '',
//     );
//   }
// }

// void psaveUserData(ParentsData puserData) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString('parent_id', puserData.parentId);
//   prefs.setString('parentname', puserData.parentname);
//   prefs.setString('pmobile_no', puserData.pmobile_no);
//   prefs.setString('profilephoto', puserData.profilephoto);
//   prefs.setString('address', puserData.address);
//   prefs.setString('college_code', puserData.collegeCode);
// }

// class UserData {
//   final String studId;
//   final String studName;
//   final String studStd;
//   final String studRollNo;
//   final String studDiv;
//   final DateTime studDob;
//   final String studPhoneNo;
//   final String password;
//   final String photo;
//   final String collegeCode;

//   UserData({
//     required this.studId,
//     required this.studName,
//     required this.studStd,
//     required this.studRollNo,
    
//     required this.studDiv,
//     required this.studDob,
//     required this.studPhoneNo,
//     required this.password,
//     required this.photo,
//     required this.collegeCode,
//   });

//   factory UserData.fromJson(Map<String, dynamic> json) {
//     return UserData(
//       studId: json['studentid'] ?? '',
//       studName: json['Name'] ?? '',
//       studStd: json['std'] ?? '',
//       studRollNo: json['roll_no'] ?? '',
//       studDiv: json['division'] ?? '',
//       studDob: json['stud_dob'] != null
//           ? DateTime.parse(json['stud_dob'])
//           : DateTime(1970, 1, 1),
//       studPhoneNo: json['mobile'] ?? '',
//       password: json['password'] ?? '',
//       photo: json["profile_img"] ?? '',
//       collegeCode: json["college_code"] ?? '',
//     );
//   }
// }

// void tsaveUserData(TeacherData tuserData) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString('teacher_code', tuserData.teachercode);
//   prefs.setString('tname', tuserData.tname);
//   prefs.setString('mobileno', tuserData.mobileno);
//   prefs.setString('teacher_email', tuserData.teacheremail);
//   prefs.setString('teacher_profile', tuserData.teacherprofile);
//   prefs.setString('teacher_education', tuserData.teachereducation);
//   prefs.setStringList(
//       'subjects', tuserData.subjects); // Save the list of subjects
//   prefs.setString('college_code', tuserData.collegeCode);
//   prefs.setString('standard', tuserData.standard);
//   prefs.setString('division', tuserData.division);
//   print(tuserData.teachercode);
//   print(tuserData.tname);
//   print(tuserData.subjects);
//   print(tuserData.collegeCode);
// }

// class TeacherData {
//   final String teachercode;
//   final String tname;
//   final String tpassword;
//   final String teacheremail;
//   final String teachereducation;
//   final DateTime teacherDob;
//   final String mobileno;
//   final List<String> subjects;
//   final String teacherprofile;
//   final String collegeCode;
//   final String standard;
//   final String division;

//   TeacherData({
//     required this.teachercode,
//     required this.tname,
//     required this.tpassword,
//     required this.teacheremail,
//     required this.teachereducation,
//     required this.teacherDob,
//     required this.mobileno,
//     required this.subjects, // Update the type here
//     required this.teacherprofile,
//     required this.collegeCode,
//     required this.standard,
//     required this.division,
//   });

//   factory TeacherData.fromJson(Map<String, dynamic> json) {
//     return TeacherData(
//       teachercode: json['teacher_code'] ?? '',
//       tname: json['tname'] ?? '',
//       tpassword: json['tpassword'] ?? '',
//       teacheremail: json['teacher_email'] ?? '',
//       teachereducation: json['teacher_education'] ?? '',
//       teacherDob: json['date_of_birth'] != null
//           ? DateTime.parse(json['date_of_birth'])
//           : DateTime(1970, 1, 1),
//       mobileno: json['mobileno'] ?? '',
//       subjects: List<String>.from(
//           json['subjects'] ?? []), // Parse the list of subjects
//       teacherprofile: json["teacher_profile"] ?? '',
//       collegeCode: json["college_code"] ?? '',
//       standard: json["standard"] ?? '',
//       division: json['division'] ?? '',
//     );
//   }
// }

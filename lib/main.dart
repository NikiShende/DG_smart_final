// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_projects/welcome.dart';
// // import 'package:http/http.dart' as http;


// const Color primaryColor=Color.fromARGB(255, 3, 169, 244); 


// void main() {
//   runApp(const MyApp());
// }




// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My first app',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Roboto',
//         // primarySwatch: Colors.blue,
//       ),

//       home:MyHomePage(),
//     );
//   }
// }



// class MyHomePage extends StatefulWidget {

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }


// class _MyHomePageState extends State<MyHomePage> {
 

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
     
//       body:Container(
//         decoration: BoxDecoration(
//           image:DecorationImage( 
//             image: AssetImage('assets/images/flight.jpg'),
//             fit: BoxFit.cover,
//           ),

 
        
//         ),
//         child: Center(

//           child: Column(
//             children: [
//             SizedBox(height: 70,),
//              Image.asset('assets/images/logo.png',height: 100,),

//              SizedBox(height: 33,),

//               Container(
//                 height: 46,
//                 width: 280,
//                 child: TextField(
                  
//                           decoration: InputDecoration(
//                             hintText: 'Enter School Code',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(7.0),
//                               borderSide: const BorderSide(
//                                 color: primaryColor,
//                                 width: 1.0,
//                               ),
                
//                             ),
//                           ),
//                         ),
//               ),
//               SizedBox(height: 17,),
//                Container(
//                 height: 46,
//                 width: 280,
//                 child: ElevatedButton(
//                   onPressed:(){

//                   },
                  
//                       child:Text(
//                           'PROCEED',
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: primaryColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(7.0),
//                     ),
//                   ),
//                 ),
//               ),
                      
             
              
             
             
             
//             ],
          
//           ),
        
         
          
//         )


//       )
//     );
//   }
// }


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projects/welcome.dart';
import 'package:http/http.dart' as http;


const Color primaryColor=Color.fromARGB(255, 3, 169, 244); 


void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        // primarySwatch: Colors.blue,
      ),

      home:MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _college_codeController = TextEditingController();
  bool _isLoading = false; // To manage loading state
  

  Future<void> _verifycollege_code() async {
    final String college_code = _college_codeController.text.trim();

    if (college_code.isEmpty) {
      _showMessage('Please enter a school code.');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse('https://api2-00.onrender.com/check'), // Replace with your API URL
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'college_code': college_code}),
      );

      setState(() {
        _isLoading = false;
      });

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['success']) {
          // Navigate to the next page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Welcome()),
          );
        } else {
          _showMessage(data['message'] ?? 'Invalid school code.');
        }
      } else {
        _showMessage('Failed to verify the school code. Please try again.');
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showMessage('An error occurred. Please try again.');
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body:Container(
        decoration: BoxDecoration(
          image:DecorationImage( 
            image: AssetImage('assets/images/flight.jpg'),
            fit: BoxFit.cover,
          ),
      
       
        
        ),
        child: Center(
      
          child: Column(
            children: [
            SizedBox(height: 70,),
             Image.asset('assets/images/logo.png',height: 100,),
      
             SizedBox(height: 33,),
      
              Container(
                height: 46,
                width: 280,
                child: TextField(
                   controller: _college_codeController,
                          decoration: InputDecoration(
                            hintText: 'Enter School Code',
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
              SizedBox(height: 17,),
              SizedBox(
                height: 45,
                width: 280,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _verifycollege_code,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: _isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                          'PROCEED',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ),
              ),
                      
             
              
             
             
             
            ],
          
          ),
        
         
          
        )
      
      
      )
    );
  }
}




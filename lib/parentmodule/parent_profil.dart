import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/parentmodule/parent_dash.dart';
// import 'package:flutter_application/main.dart';
void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),),
        leading: IconButton(onPressed: (){
          // Navigate to the previous screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ParentDashboard()),
        );

        }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
       
        
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
                              'Pawar Pratiksha', 
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
                            'Children:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Pawar monika, More Aadesh', 
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
                            'Address:', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Tambhere', 
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
                            '34-3-2000', 
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
                            'pa@gmail.com', 
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
                backgroundImage: AssetImage('assets/images/parentslogo.png'),
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
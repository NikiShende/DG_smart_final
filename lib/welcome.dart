import 'package:flutter/material.dart';
import 'package:flutter_projects/login.dart';
import 'package:flutter_projects/main.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          
         
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                 
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
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
                      SizedBox(width: 42,),

                    Text('Welcome to Smart school !', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),),
                    
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 55,),
                    Text('  MG JUNIOR COLLEGE,PRAVARANAGAR',style: TextStyle(fontSize: 15),)
                  ],
                )
              ],
            ),
          
          ),




// Stack(
//                 children: [
//                   Positioned(
//                     top: 150,
//                     left: 50,
            
//                     child:Container (
//                       height: 80,
//                       width: 120,
                     
//                       decoration: BoxDecoration(
//                          color: const Color.fromARGB(255, 252, 255, 255),
//                         //  borderRadius: BorderRadius.circular(50)
//                          borderRadius: BorderRadius.only(
                        
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                         ),
            
//                       ),
                      
//                     ),
//                   ),
//                   Positioned(
//                     top: 120,
//                     left: 220,
//                     child: Container (
//                       height: 90,
//                       width: 70,
                      
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 245, 249, 249),
//                          borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(150),
//                           topRight: Radius.circular(150),
//                           bottomLeft: Radius.circular(100),
//                           bottomRight: Radius.circular(90),
//                         ),
                        
//                       ),
//                     )
//                   )
                  
                  
//                 ],
//               ),



            
      //student panel

           SizedBox(height: 20,),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 100,),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                         
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Login(
                            imagePath: 'assets/images/stud.png',

                           )));
                        },
                        child: Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                        
                                borderRadius: BorderRadius.circular(5),
                                // border: Border.all(color: Colors.grey),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.6,
                                    blurRadius: 0.9,
                                  )
                                ]
                                
                              ),
                              child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(image: AssetImage('assets/images/stud.png',)),
                            ) ,
                        
                        
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Student',style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  )
                  
                  
                ],
              ),



              // teacher panel

              SizedBox(height: 20,),
                Row(
                children: [
                  SizedBox(width: 100,),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(
                              imagePath: 'assets/images/teacher.png',
                          )));
                        },
                        child: Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                        
                                borderRadius: BorderRadius.circular(5),
                                // border: Border.all(color: Colors.grey),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.6,
                                    blurRadius: 0.9,
                                  )
                                ]
                                
                              ),
                              child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(image: AssetImage('assets/images/teacher.png',)),
                            ) ,
                        
                        
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Teacher',style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  )
                  
                  
                ],
              ),






              // parent panel

              SizedBox(height: 20,),
             Row(
                children: [
                  SizedBox(width: 100,),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(
                             imagePath: 'assets/images/parents.png',
                          )));
                        },
                        child: Container(
                          height: 130,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                        
                                borderRadius: BorderRadius.circular(5),
                                // border: Border.all(color: Colors.grey),
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
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image(image: AssetImage('assets/images/parents.png',)),
                            ) ,
                        
                        
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Parent',style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  )
                  
                  
                ],
              ),




            ],
          )










        ],
      )

    );
  }
}
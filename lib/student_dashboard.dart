import 'dart:ui';

import 'package:flutter/material.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Container(
            height: 156,
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
            child: const Row(
              children: [
                SizedBox(width: 30,),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                  
                    backgroundImage: AssetImage('assets/images/studentlogo.png'),
                  
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                        SizedBox(height: 60,),
                    Text(
                      ' Priyanka Dube',
                      style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6,),
                    Padding(
                      padding: EdgeInsets.only(right: 3),
                      child: Text(
                        'Roll No: R001',
                        style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 6,),
                    Padding(
                      padding: EdgeInsets.only(right: 21),
                      child: Text(
                        'Class: 10A',
                        style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  
                  
                    ],
                  ),
                  
                ),
                SizedBox(width: 50,),
                Row(
                  children: [
                
                  Icon(Icons.menu, color: Colors.white,),
                  SizedBox(width: 10,),
                  
                  ],
                )
              
              
              ],
            
            ),
            
          
            
          ),



          SizedBox(height: 20,),
           Expanded(child: 
            Container(
              child: GridView.count(crossAxisCount: 2,
              mainAxisSpacing: 1, crossAxisSpacing: 1,
              children: [
                Container(     
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),
                    
                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/english.png',), 
                
                  // alignment: Alignment.center),

                  ),
                  
                   child: InkWell(
                    onTap: (){
                      
                      // Navigator.push( context,
                      //           MaterialPageRoute(
                      //             builder: (BuildContext context) {
                      //               return HomeworkPage();
                      //             },
                      //           ),
                      //         );
                    },
                     child: Container(
                       padding: EdgeInsets.only(top: 125,left: 50),
                       child: Text('English',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                         
                     
                       ),
                   ),
                  

                ),
               
                InkWell(
                   onTap: (){
                      
                      
                      // Navigator.push( context,
                      //           MaterialPageRoute(
                      //             builder: (BuildContext context) {
                      //               return MarathiHomework();
                      //             },
                      //           ),
                      //         );
                    },
                    
                  child: Container(     
                   
                      margin: EdgeInsets.all(10),
                       height: 80,
                  width: 190,
                    decoration: BoxDecoration(
                       color: const Color(0xFFF5EEEE),
                      borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 214, 210, 210),
                      
                      spreadRadius: 2,
                  
                    )
                  ],
                    //  image: DecorationImage(image: AssetImage('assets/images/marathi.png')),
                  
                    ),
                     child: Container(
                       padding: EdgeInsets.only(top: 120,left: 50),
                       child: Text('Marathi',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                         
                     
                       ),
                    
                  
                  ),
                ),
                Container(     
                   margin: EdgeInsets.all(10),
                    height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                     color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),
                    
                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/hindi.png')),

                  ),
                   child: Container(
                     padding: EdgeInsets.only(top: 120,left: 50),
                     child: Text('Hindi',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                       
                   
                     ),
                  

                ),
                Container(     
                 
                    margin: EdgeInsets.all(10),
                     height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                   color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),
                    
                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/science.png')),

                  ),
                   child: Container(
                     padding: EdgeInsets.only(top: 120,left: 50),
                     child: Text('Science',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                       
                   
                     ),
                  

                ),
                Container(     
                 
                   margin: EdgeInsets.all(10),
                    height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                     color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),
                    
                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/math.png')),

                  ),
                   child: Container(
                     padding: EdgeInsets.only(top: 120,left: 20,right: 10),
                     child: Text('Mathematics',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       
                   
                     ),
                  

                ),
                Container(     
                    margin: EdgeInsets.all(10),
                     height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),
                    
                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/history.png')),

                  ),
                   child: Container(
                     padding: EdgeInsets.only(top: 120,left: 50),
                     child: Text('History',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                       
                   
                     ),
                  

                ),
                Container(     
                
                    margin: EdgeInsets.all(10),
                     height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),
                    
                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/Arts.png')),

                  ),
                   child: Container(
                     padding: EdgeInsets.only(top: 120,left: 50),
                     child: Text('Art',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                       
                   
                     ),
                  

                ),
                Container(     
               
                  margin: EdgeInsets.all(10),
                   height: 80,
                  width: 190,
                  decoration: BoxDecoration(
                  color: const Color(0xFFF5EEEE),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 210, 210),


                    spreadRadius: 2,

                  )
                ],
                  //  image: DecorationImage(image: AssetImage('assets/images/sports.png')),

                  ),
                   child: Container(
                     padding: EdgeInsets.only(top: 120,left: 50,),
                     child: Text('sports',style: TextStyle(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                       
                   
                     ),
                  

                ),





                


              ],
              ),

             

            )
            
            
            
            
            )
         



          
          
        ],
      ),

    );
  }
}











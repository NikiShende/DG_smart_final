import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';


import 'dart:io';

class StudentHomework extends StatefulWidget {
  const StudentHomework({super.key});

  @override
  State<StudentHomework> createState() => _StudentHomeworkState();
}

class _StudentHomeworkState extends State<StudentHomework> {
  

  String _selectedTab = 'Pending';



   String? selectedValue;

   

 
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,size: 32,color: Colors.white,)),

                ),



                SizedBox(width: 10,),
                Container(
                  
                  width: 160,
                  // color: const Color.fromARGB(255, 195, 185, 149),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text('Your homework is Here !',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                  ),
                  Container(
                    child: Image.asset('assets/images/home.png',height: 100,),
                  )
              ],
            ),
          ),
          SizedBox(height: 15,),
         Column(
        children: [
          // Toggle Bar
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 238, 238)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Created Button
               



                const SizedBox(width: 2),



                  // Pending Button
               
                 ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTab = 'Pending';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      
                    ),
                    
                    elevation: 3,
                    backgroundColor: _selectedTab == 'Pending'
                        ? Colors.red
                        : const Color.fromARGB(255, 236, 229, 229),
                  ),
                  child: const Text(
                    'Pending',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 18),

                 // Submitted Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTab = 'Submitted';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: _selectedTab == 'Submitted'
                        ? Colors.green
                        : const Color.fromARGB(255, 236, 229, 229),
                  ),
                  child: const Text(
                    'Submitted',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
               const SizedBox(width:18),


                // evaluated button
                
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTab = 'Evaluated';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: _selectedTab == 'Evaluated'
                        ? Colors.blue
                        : const Color.fromARGB(255, 236, 229, 229),
                  ),
                  child: const Text(
                    'Evaluated',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                

               

               
                
              ],
            ),
          ),

        ]
),




 Expanded(
            child: Stack(
              children: [
                

                // Pending Content
                   if (_selectedTab == 'Pending')
                 SingleChildScrollView(
                 child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      height: 280,
                      width: 330,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        )
                        
                      ),
                      child: Column(
                        children: [
                          
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                                                   height: 85,
                                                   decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 230, 230),
                            borderRadius: BorderRadius.circular(5)
                            
                            ),
                           
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 3),
                                  child: Text('Mathematics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 7,),
                                Row(
                                  children: [
                                    SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('View',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                    
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green,
                                        
                                       )
                                       
                                     ),
                                  ),
                                  ),
                                  SizedBox(width: 13,),
                                  ElevatedButton(onPressed: 
                                  (){

                                  },
                                
                                   child: Text('Submit',style: TextStyle(fontSize: 15,color: Colors.green),
                                  
                                  ),
                                  style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green,
                                       )
                                     ),
                                     
                                  ),
                                  
                                  ),
                                  
                                  SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('Download',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green
                                       )
                                     ),
                                     
                                     
                                    
                                  ),
                                
                                  ),
                                ],
                               ),

                                             
                                
                              
                              ],
                              
                           ),
                                                   
                       ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Assignment HP 187',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Homework Date:25/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                        // SizedBox(width: 5,),
                        
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Submission Date:28/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Created by:Pradip Sonawane',style: TextStyle(fontSize: 15),),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Description',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 11),
                         child: Text('fghjkl', style: TextStyle(fontSize: 15,color: Colors.black,)),
                       ),
                        ]
                    )




                 ],
               ),


                    ),













                    SizedBox(height: 9,),
                     Container(
                      height: 280,
                      width: 330,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        )
                        
                      ),
                      child: Column(
                        children: [
                          
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                                                   height: 85,
                                                   decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 230, 230),
                            borderRadius: BorderRadius.circular(5)
                            
                            ),
                           
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 3),
                                  child: Text('Mathematics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 7,),
                                Row(
                                  children: [
                                    SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('View',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                    
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green,
                                        
                                       )
                                       
                                     ),
                                  ),
                                  ),
                                  SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('Submit',style: TextStyle(fontSize: 15,color: Colors.green),
                                  
                                  ),
                                  style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green,
                                       )
                                     ),
                                     
                                  ),
                                  
                                  ),
                                  
                                  SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('Download',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green
                                       )
                                     ),
                                     
                                     
                                    
                                  ),
                                
                                  ),
                                ],
                               ),

                                             
                                
                              
                              ],
                              
                           ),
                                                   
                       ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Assignment HP 187',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Homework Date:25/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                        // SizedBox(width: 5,),
                        
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Submission Date:28/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Created by:Pradip Sonawane',style: TextStyle(fontSize: 15),),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Description',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 11),
                         child: Text('fghjkl', style: TextStyle(fontSize: 15,color: Colors.black,)),
                       ),
                        ]
                    )




                 ],
               ),


                    ),

                  ],
                 )





                  ),


                  if (_selectedTab=='Submitted')
                 SingleChildScrollView(
                 child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      height: 280,
                      width: 330,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        )
                        
                      ),
                      child: Column(
                        children: [
                          
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                                                   height: 85,
                                                   decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 230, 230),
                            borderRadius: BorderRadius.circular(5)
                            
                            ),
                           
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 3),
                                  child: Text('Mathematics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 7,),
                                Row(
                                  children: [
                                    SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('View',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                    
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green,
                                        
                                       )
                                       
                                     ),
                                  ),
                                  ),
                                  SizedBox(width: 100,),
                                  
                                  
                                 
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('Download',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green
                                       )
                                     ),
                                     
                                     
                                    
                                  ),
                                
                                  ),
                                ],
                               ),

                                             
                                
                              
                              ],
                              
                           ),
                                                   
                       ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Assignment HP 187',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Homework Date:25/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                        // SizedBox(width: 5,),
                        
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Submission Date:28/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Created by:Pradip Sonawane',style: TextStyle(fontSize: 15),),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Description',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 11),
                         child: Text('fghjkl', style: TextStyle(fontSize: 15,color: Colors.black,)),
                       ),
                        ]
                    )




                 ],
               ),


                    ),













                    SizedBox(height: 9,),
                     Container(
                      height: 280,
                      width: 330,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        )
                        
                      ),
                      child: Column(
                        children: [
                          
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                                                   height: 85,
                                                   decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 230, 230),
                            borderRadius: BorderRadius.circular(5)
                            
                            ),
                           
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 190,top: 3),
                                  child: Text('Mathematics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 7,),
                                Row(
                                  children: [
                                    SizedBox(width: 13,),
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('View',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                    
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green,
                                        
                                       )
                                       
                                     ),
                                  ),
                                  ),
                                  SizedBox(width: 100,),
                                 
                                  
                                 
                                  ElevatedButton(onPressed: (){
                           
                                  }, child: Text('Download',style: TextStyle(fontSize: 14,color: Colors.green),),
                                  style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       side: BorderSide(
                                        color: Colors.green
                                       )
                                     ),
                                     
                                     
                                    
                                  ),
                                
                                  ),
                                ],
                               ),

                                             
                                
                              
                              ],
                              
                           ),
                                                   
                       ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Assignment HP 187',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Homework Date:25/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                        // SizedBox(width: 5,),
                        
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Submission Date:28/10/2024',style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Created by:Pradip Sonawane',style: TextStyle(fontSize: 15),),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text('Description',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 11),
                         child: Text('fghjkl', style: TextStyle(fontSize: 15,color: Colors.black,)),
                       ),
                        ]
                    )




                 ],
               ),


                    ),

                  ],
                 )





                  ),




                  if(_selectedTab=='Evaluated')
                  SingleChildScrollView(
                    child: Column(
                      children: [],
                    )
                         
                  )







              ],
            )
 )







        















        ],
      ),
      
    );
  }
}
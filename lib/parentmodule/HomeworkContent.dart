import 'package:flutter/material.dart';
import 'package:flutter_projects/parentmodule/parent_dashboard.dart';
import 'dart:io';

class CheckHomework extends StatefulWidget {
  const CheckHomework({super.key});

  @override
  State<CheckHomework> createState() => CheckHomeworkScreen();
}
class CheckHomeworkScreen extends State<CheckHomework> {
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

                    width: 200,
                    // color: const Color.fromARGB(255, 195, 185, 149),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text('Your homework\nis Here !',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    )
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 42),
                    child: Image.asset('assets/images/home.png',height: 100,),
                  ),
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
                    children:[
                      // const SizedBox(width: 2),

                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTab = 'Pending';
                          });
                        },
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
                        ),

                          elevation: 3, backgroundColor: _selectedTab == 'Pending' ? Colors.red : const Color.fromARGB(255, 236, 229, 229),
                        ),
                        child: const Text(
                          'Pending', style: TextStyle(fontSize: 14, color: Colors.black),),),
                      const SizedBox(width: 10),








                      // Submitted Button
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTab = 'Submitted';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 3, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: _selectedTab == 'Submitted' ? Colors.green : const Color.fromARGB(255, 236, 229, 229),
                        ),
                        child: const Text(
                          'Submitted', style: TextStyle(fontSize: 14, color: Colors.black),),),
                      const SizedBox(width:10),








                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTab = 'Evaluated';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 3, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                          backgroundColor: _selectedTab == 'Evaluated' ? Colors.blue : const Color.fromARGB(255, 236, 229, 229),),
                        child: const Text(
                          'Evaluated', style: TextStyle(fontSize: 14, color: Colors.black),),),
                    ],
                  ),
                ),

              ]
          ),


































































          Expanded(
              child: Stack(
                children: [
                  if (_selectedTab == 'Pending')
                    SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),






                            Card(
                              elevation: 5,
                              margin: EdgeInsets.all(15),

                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 212, 226, 243),
                                        borderRadius: BorderRadius.circular(8)

                                      ),

                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 190,top: 10),
                                            child: Text('Mathematics', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(height: 7,),
                                          Row(
                                            children: [
                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed: (){

                                              }, child: Text('View',style: TextStyle(fontSize: 13,color: Colors.green),),
                                                style: ElevatedButton.styleFrom(

                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      side: BorderSide(
                                                        color: Colors.green,

                                                      )

                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed:
                                                  (){

                                              },

                                                child: Text('Submit',style: TextStyle(fontSize: 13,color: Colors.green),

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

                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed: (){

                                              }, child: Text('Download',style: TextStyle(fontSize: 13,color: Colors.green),),
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
                                        padding: const EdgeInsets.only(left: 11,top: 7),
                                        child: Text('Assignment HP 187',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
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
                                          padding: const EdgeInsets.only(left: 11,bottom: 8),
                                          child: Text('fghjkl', style: TextStyle(fontSize: 15,color: Colors.black,)),
                                        ),
                                      ]
                                  )




                                ],
                              ),


                            ),













                            SizedBox(height: 9,),
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.all(15),

                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 212, 226, 243),
                                          borderRadius: BorderRadius.circular(8)

                                      ),

                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 190,top: 10),
                                            child: Text('Mathematics', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(height: 7,),
                                          Row(
                                            children: [
                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed: (){

                                              }, child: Text('View',style: TextStyle(fontSize: 13,color: Colors.green),),
                                                style: ElevatedButton.styleFrom(

                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      side: BorderSide(
                                                        color: Colors.green,

                                                      )

                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed:
                                                  (){

                                              },

                                                child: Text('Submit',style: TextStyle(fontSize: 13,color: Colors.green),

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

                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed: (){

                                              }, child: Text('Download',style: TextStyle(fontSize: 13,color: Colors.green),),
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
                                        padding: const EdgeInsets.only(left: 11,top: 7),
                                        child: Text('Assignment HP 187',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 10,),
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
                                          padding: const EdgeInsets.only(left: 11,bottom: 8),
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











// submitted content

                  if (_selectedTab=='Submitted')
                    SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.all(15),

                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 212, 226, 243),
                                        borderRadius: BorderRadius.circular(8),



                                      ),

                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 190,top: 10),
                                            child: Text('Mathematics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(height: 7,),
                                          Row(
                                            children: [
                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed: (){

                                              },
                                                child: Text('View',style: TextStyle(fontSize: 13,color: Colors.green),),
                                                style: ElevatedButton.styleFrom(

                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      side: BorderSide(
                                                        color: Colors.green,

                                                      )

                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 105,),



                                              ElevatedButton(onPressed: (){

                                              }, child: Text('Download',style: TextStyle(fontSize: 13,color: Colors.green),),
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
                                        padding: const EdgeInsets.only(left: 11,top: 7),
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
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 116,bottom: 6),
                                        child: ElevatedButton(onPressed: (){

                                        }, child: Text('Approved',style: TextStyle(fontSize: 13,color: Colors.white),),
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(20, 35),
                                            backgroundColor: Colors.green,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),



                                              side: BorderSide(
                                                color: Colors.green
                                                ,
                                              ),
                                            ),

                                          ),
                                        ),
                                      )
                                    ],
                                  )





                                ],
                              ),


                            ),















                            SizedBox(height: 9,),
                            Card(
                              elevation: 5,
                              margin: EdgeInsets.all(15),

                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 212, 226, 243),
                                        borderRadius: BorderRadius.circular(8),



                                      ),

                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 190,top: 10),
                                            child: Text('Mathematics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(height: 7,),
                                          Row(
                                            children: [
                                              SizedBox(width: 15,),
                                              ElevatedButton(onPressed: (){

                                              }, child: Text('View',style: TextStyle(fontSize: 13,color: Colors.green),),
                                                style: ElevatedButton.styleFrom(

                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      side: BorderSide(
                                                        color: Colors.green,

                                                      )

                                                  ),
                                                ),
                                              ),

                                              SizedBox(width: 105,),
                                              ElevatedButton(onPressed: (){

                                              }, child: Text('Download',style: TextStyle(fontSize: 13,color: Colors.green),),
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
                                        padding: const EdgeInsets.only(left: 11,top:7),
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
                                          child: Text('Complete math', style: TextStyle(fontSize: 15,color: Colors.black,)),
                                        ),
                                      ]
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 116,bottom: 6),
                                        child: ElevatedButton(onPressed: (){

                                        }, child: Text(' Not Approved',style: TextStyle(fontSize: 12,color: Colors.white),),
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(20, 35),
                                            backgroundColor: Colors.red,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),



                                              side: BorderSide(
                                                color: Colors.red
                                                ,
                                              ),
                                            ),

                                          ),
                                        ),
                                      )
                                    ],
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
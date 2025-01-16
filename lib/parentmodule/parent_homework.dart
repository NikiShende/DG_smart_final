import 'package:flutter/material.dart';
import 'package:flutter_projects/parentmodule/parent_dashboard.dart';
import 'package:flutter_projects/parentmodule/homeworkcontent.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homework(),
  ));
}
class Homework extends StatefulWidget {
  const Homework({super.key});

  @override
  State<Homework> createState() => HomeworkScreen();
}

class HomeworkScreen extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        leading: IconButton(
          icon: Icon(
            size: 25,
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Dashboard()));
          },
        ),


        toolbarHeight: 65,
        title: Text('Homework',

          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),

        backgroundColor: Colors.blue,
        // leading:Padding(
        //     padding: EdgeInsets.only(top: 0),
        //     child:CircleAvatar(
        //   radius: 50,
        //   backgroundImage: AssetImage('assets/profile.jpg'),
        // ),
        //  ),

      ),


      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(

          child: Column(
            children: [
              InkWell(
                onTap: () {
                  // Uncomment and implement navigation logic
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },

              ),


              Column(

                children: [













                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            // margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 179, 207, 230),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('English',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),




                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            // margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 244, 204, 143),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Marathi',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),













                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 219, 160, 155),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Mathematics',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 235, 228, 164),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Science',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 244, 204, 143),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Sport',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),




                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 159, 236, 246),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Art',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),




                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 235, 228, 164),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Sport',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),




                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckHomework()));
                          },
                          child: Container(
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(255, 179, 207, 230),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50,left: 5),
                                  child: Text('Art',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                // Image.asset('assets/',height: 10,),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),















                ],),
            ],
          ),
        ),
      ),
    );
  }
}

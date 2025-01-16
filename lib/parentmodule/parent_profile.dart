import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,

        title: Text(' Profile', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white)),

        backgroundColor: Colors.blue,
      ),









      body:SingleChildScrollView(















        child: Column(
          children: [
            Transform.translate(
              offset: Offset(-40, -250),
              child: Transform.rotate(
                angle: 1.2,
                child: Container(
                  height: 440,
                  width: double.infinity,
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(Icons.arrow_back,color: Colors.white,),
                    title: Text('profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
                  ),

                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -370),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/stud.png'),
              ),

            ),





















            Transform.translate(
              offset: Offset(0, -370),
              child: Column(
                children: [
                  SizedBox(height:40,),
                  Container(
                    height: 46,
                    width: 280,
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

                  SizedBox(height:15,),
                  Container(
                    height: 46,
                    width: 280,
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
                            'Pawar Monika, More Adesh Wani',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 40,),
                          Text(
                            'Address:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
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
                  SizedBox(height:15,),
                  Container(
                    height: 46,
                    width: 280,
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
                            '7345565657',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:15,),
                  Container(
                    height: 46,
                    width: 280,
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
                            'Birth Date:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '23/04/2000',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:15,),
                  Container(
                    height: 46,
                    width: 280,
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
                            'Email ID:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'p@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height:15,),
                  Container(
                    height: 46,
                    width: 280,
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
            )



          ],



        ),

      ),








    );
  }
}
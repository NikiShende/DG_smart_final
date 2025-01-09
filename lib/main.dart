import 'package:flutter/material.dart';
import 'package:flutter_projects/welcome.dart';

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
        primarySwatch: Colors.blue,
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
                
                          decoration: InputDecoration(
                            hintText: 'Enter School Code',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),
                
                            ),
                          ),
                        ),
              ),
              SizedBox(height: 17,),
              Container(
            
                height: 46,
                width: 280,
                // color: Colors.blue,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                    return Welcome();
                  }));


                }, 
                child: Text('PROCEED',style: TextStyle(color: Colors.white,fontSize: 14),),
                style: ElevatedButton.styleFrom(

                  backgroundColor:  Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                 
                ),
                )
                

              )
                      
             
              
             
             
             
            ],
          
          ),
        
         
          
        )


      )
    );
  }
}

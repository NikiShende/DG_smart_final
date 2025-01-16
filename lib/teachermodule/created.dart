
import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:image_picker/image_picker.dart';

class k extends StatefulWidget {
  const k({super.key});

  @override
  State<k> createState() => _kState();
}

class _kState extends State<k> {
  String? selectedSubject;
  String? selectedClass;
  String? selectedDiv;
   int _selectedTabIndex = 0;

  List<String> subjects = ['  Mathematics', '  Sports', '  Marathi'];
  List<String> classes = ['10', '11', '12'];
  List<String> divisions = ['A', 'B', 'C'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeader(),
          _buildTabBar(),
          SizedBox(height: 7,),
          Row(
            children: [
              SizedBox(width: 8),
               Padding(
                 padding: const EdgeInsets.only(top:20.0,left: 4),
                 child: Container(
                  // margin: EdgeInsets.only(left: 20),
                      height: 45,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(selectedSubject ?? " Subject"),
                        ),
                        // underline: Container(),
                        value: selectedSubject,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedSubject = newValue;
                          });
                        },
                        items: subjects.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(  value),
                          );
                        }).toList(),
                      ),
                    ),
               ),
SizedBox(width: 8),
                   Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedClass ?? "Class"),
                      ),
                      underline: Container(),
                      value: selectedClass,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedClass = newValue;
                        });
                      },
                      items: classes.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 8),

                // Division Dropdown
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(selectedDiv ?? "Div"),
                      ),
                      underline: Container(),
                      value: selectedDiv,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDiv = newValue;
                        });
                      },
                      items: divisions.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
            ],
          ),
  
          Expanded(
            child: _getTabContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      height: 140,
      child: Container(
        color: primaryColor,
        child: Row(
          children: [
            IconButton(
              iconSize: 30.0,
              color: Colors.white,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(width: 10),
            SizedBox(width: 177,
              child: Text(
                'Your Homework is here...',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/next.png', height: 70),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      margin: const EdgeInsets.only(left: 5,top: 5),
      child: Wrap(
        
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           _buildTabButton('Created', 0),
           SizedBox(height: 20,width: 6,),
          _buildTabButton('View', 1),
           SizedBox(height: 20,width: 6,),
          _buildTabButton('Pending', 2),
           SizedBox(height: 20,width: 6,),
          _buildTabButton('Submitted', 3),
           SizedBox(height: 10,width: 6,),
          
        ],
      ),
    );
  }

  Widget _buildTabButton(String label, int index) {
    Color backgroundColor;
    if (_selectedTabIndex == index) {
      switch (index) {
        case 0:
          backgroundColor = Colors.red;
          break;
        case 1:
          backgroundColor = const Color.fromARGB(255, 1, 84, 3);
          break;
        case 2:
          backgroundColor = Colors.blue;
          break;
          case 3:
          backgroundColor = const Color.fromARGB(255, 78, 244, 131);
          break;
        default:
          backgroundColor = Colors.grey;
      }
    } else {
      backgroundColor = const Color.fromARGB(255, 249, 245, 245);
    }

    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
        minimumSize: const Size(170, 40),
        side: BorderSide(
        color: Colors.grey,  // Border color
        width: 1.0,          // Border width
      ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: backgroundColor,
        
      ),
      onPressed: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Text(
        label,
        style: TextStyle(
          color: _selectedTabIndex == index ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget _getTabContent() {
    if (_selectedTabIndex == 0) {
      return _buildCreatedTab();
    } else if (_selectedTabIndex == 1) {
      return _buildPendingTab();
    } else if (_selectedTabIndex == 2) {
      return _buildSubmittedTab();
    } 
    else {
      return _buildEvaluatedTab();
    }
  }


  Widget _buildCreatedTab(){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Point Name',
                border: OutlineInputBorder()
              ),
            ), SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Homework Date',
                border: OutlineInputBorder()
              ),
            ) ,SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Submission Date',
                border: OutlineInputBorder()
              ),
            ), SizedBox(height: 20,),
            Row(
              children: [
                Text('Description  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
              ],
            ),
            SizedBox(height: 5,),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                labelText: 'Point Name',
                border: OutlineInputBorder()
              ),
            ) ,SizedBox(height: 20,),
            Text('Selected File :No File selected                                         ',style: TextStyle(fontSize: 15),),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.blue,width: 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                 child:Text('upload')),
                 SizedBox(width: 60,),
                  ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.blue,width: 1,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                 child:Text('Submit'))
              ],
            )
      
          ],
        ),
      ),
    );

  }

  Widget _buildPendingTab() {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return _buildHomeworkCard("Pending Homework ${index + 1}", Colors.blue);
      },
    );
  }

  Widget _buildSubmittedTab() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return _buildHomeworkCard("Submitted Homework ${index + 1}", Colors.blue);
      },
    );
  }

  Widget _buildEvaluatedTab() {
    return ListView.builder(
      
      itemCount: 1,
      itemBuilder: (context, index) {
        return _buildHomeworkCard("Evaluated Homework ${index + 1}", Colors.blue);
      },
    );
  }

  Widget _buildHomeworkCard(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: color.withOpacity(0.4),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),),
                        onPressed: () {},
                        child: const Text('View'),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),),
                        onPressed: () {
                          showImagePickeroption(context);
                        },
                        child: const Text('Submit'),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),),
                        onPressed: () {},
                        child: const Text('Download'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Assignment 1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  _HomeworkDetailRow('Homework Date', '04/04/2024'),
                  _HomeworkDetailRow('Submission Date', '15/04/2024'),
                  _HomeworkDetailRow('Created By', 'Joe Black (9000)'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Description',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Text('Please submit the homework before the last date.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeworkDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _HomeworkDetailRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value),
      ],
    );
  }
}




// void showImagePickeroption(BuildContext context){
//   showModalBottomSheet(backgroundColor: Colors.white,context: context, builder:( builder){
    
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height/4,
//       child: Expanded(
//         child: Row(
//           children: [
//             Container(
//               child: Column(
//                 children: [
//                   Icon(Icons.image,size: 20,),
//                   Text('Gallary')
//                 ],
//               ),
        
//             ),
//              Container(
//               child: Column(
//                 children: [
//                   Icon(Icons.camera_alt,size: 20,),
//                   Text('Camera')
//                 ],
//               ),
        
//             )
        
//           ],
//         ),
//       ),
//     );

//   });

// }



void showImagePickeroption(BuildContext context) {
  final ImagePicker picker = ImagePicker();

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        height: MediaQuery.of(context).size.height / 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Image From',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildPickerOption(
                  icon: Icons.image,
                  label: 'Gallery',
                  onTap: () async {
                    Navigator.pop(context);
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      print('Picked from gallery: ${image.path}');
                    }
                  },
                ),
                _buildPickerOption(
                  icon: Icons.camera_alt,
                  label: 'Camera',
                  onTap: () async {
                    Navigator.pop(context);
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.camera);
                    if (image != null) {
                      print('Picked from camera: ${image.path}');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildPickerOption(
    {required IconData icon, required String label, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 16)),
      ],
    ),
  );
}






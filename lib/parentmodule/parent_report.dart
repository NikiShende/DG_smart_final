import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Report',
          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Student Info Card
              Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color.fromARGB(255, 243, 242, 239),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.6,
                      blurRadius: 0.9,
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 40),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/stud.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Priyanka Dube',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Roll No: R001',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Class: 10A',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Data Table
              Container(
                height: 300,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Subject', style: TextStyle(fontSize: 18))),
                    DataColumn(label: Text('Percentage', style: TextStyle(fontSize: 18))),
                    DataColumn(label: Text('Result', style: TextStyle(fontSize: 18))),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Mathematics')),
                      DataCell(Text('81.92')),
                      DataCell(Text('pass')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('English')),
                      DataCell(Text('67.67')),
                      DataCell(Text('pass')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Sport')),
                      DataCell(Text('0.0')),
                      DataCell(Text('fail')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Marathi')),
                      DataCell(Text('0.0')),
                      DataCell(Text('fail')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Science')),
                      DataCell(Text('80.0')),
                      DataCell(Text('pass')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Art')),
                      DataCell(Text('0.0')),
                      DataCell(Text('fail')),
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 70),

              // Interest Section
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Your Interest',
                      style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  // Circular Chart
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<PieData, String>(
                          dataSource: [
                            PieData('Mathematics', 81.92),
                            PieData('English', 67.67),
                            PieData('Sport', 0.0),
                            PieData('Marathi', 0.0),
                            PieData('Science', 80.0),
                            PieData('Art', 0.0),
                          ],
                          xValueMapper: (PieData data, _) => data.category,
                          yValueMapper: (PieData data, _) => data.value,
                          pointColorMapper: (PieData data, _) {
                            switch (data.category) {
                              case 'Mathematics':
                                return Colors.blue;
                              case 'English':
                                return Colors.green;
                              case 'Sport':
                                return Colors.red;
                              case 'Marathi':
                                return Colors.orange;
                              case 'Science':
                                return Colors.purple;
                              case 'Art':
                                return Colors.yellow;
                              default:
                                return Colors.grey;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Legend
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        LegendItem(color: Colors.blue, label: 'Mathematics'),
                        LegendItem(color: Colors.green, label: 'English'),
                        LegendItem(color: Colors.red, label: 'Sport'),
                        LegendItem(color: Colors.orange, label: 'Marathi'),
                        LegendItem(color: Colors.purple, label: 'Science'),
                        LegendItem(color: Colors.yellow, label: 'Art'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PieData {
  final String category;
  final double value;

  PieData(this.category, this.value);
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const LegendItem({Key? key, required this.color, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(width: 20, height: 20, color: color),
          const SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}

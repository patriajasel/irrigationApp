import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class schedInformation extends StatefulWidget {
  const schedInformation({super.key});

  @override
  State<schedInformation> createState() => schedInformationState();
}

class schedInformationState extends State<schedInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          "Crop Information",
          style: TextStyle(
            fontFamily: "Rokkitt",
          ),
        ),
      ),
      body: ListView(
        children: [
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 150, // Adjust according to your preference
                    height: 150, // Adjust according to your preference
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 4, // Adjust border width
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 60, // Adjust according to your preference
                      backgroundImage: AssetImage(
                          "assets/photos/Tomato.jpg"), // Your image URL
                    ),
                  ),
                  SizedBox(height: 8), // Add space between the photo and text
                  Text(
                    'Tomato', // Add your text here
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Rokkitt"),
                  ),
                  SizedBox(
                      height: 5), // Add space between the text and DataTable
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Divider(),
                  ),
                  Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(8.0),
                      color: Colors.blue,
                      width: double.infinity,
                      child: Text("Crop Description: ",
                          style: TextStyle(
                              fontFamily: "Rokkitt",
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white))),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: Text(
                      "Tomatoes are warm-season plants that require full sun and well-drained soil to thrive. They are commonly grown for their delicious fruits that can be eaten fresh or used in various culinary dishes.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Divider(),
                  ),
                  Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Crop Schedule:",
                          style: TextStyle(
                              fontFamily: "Rokkitt",
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white))),
                  ExpansionTile(title: Text("Month #1"), children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Action')),
                            DataColumn(label: Text('Water per Plant')),
                            DataColumn(label: Text('Fertilizer')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('Week 1: Seedlings')),
                              DataCell(Text('50-100 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 2: Seedlings')),
                              DataCell(Text('150-200 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 3: Seedlings')),
                              DataCell(Text('150-200 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 4: Seedlings')),
                              DataCell(Text('150-200 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            // Add more rows as needed
                          ],
                        ),
                      ),
                    ),
                  ]),
                  ExpansionTile(title: Text("Month #2"), children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Action')),
                            DataColumn(label: Text('Water per Plant')),
                            DataColumn(label: Text('Fertilizer')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('Week 1: Vegetative Growth')),
                              DataCell(Text('200-250 (mL)')),
                              DataCell(
                                  Text('Balanced (NPK 10-10-10) 50g/plant')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 2: Vegetative Growth')),
                              DataCell(Text('250-300 (mL)')),
                              DataCell(
                                  Text('High-phosphorus (5-10-5) 30g/plant')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 3: Vegetative Growth')),
                              DataCell(Text('300-350 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 4: Vegetative Growth')),
                              DataCell(Text('300-350 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            // Add more rows as needed
                          ],
                        ),
                      ),
                    ),
                  ]),
                  ExpansionTile(title: Text("Month #3"), children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Action')),
                            DataColumn(label: Text('Water per Plant')),
                            DataColumn(label: Text('Fertilizer')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('Week 1: Pre-flowering')),
                              DataCell(Text('350-400 (mL)')),
                              DataCell(
                                  Text('Balanced (NPK 10-10-10) 50g/plant')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 2: Pre-flowering')),
                              DataCell(Text('400-450 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 3: Flowering')),
                              DataCell(Text('450-500 (mL)')),
                              DataCell(
                                  Text('High-potassium (0-10-10) 30g/plant')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('Week 4: Flowering')),
                              DataCell(Text('450-500 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            // Add more rows as needed
                          ],
                        ),
                      ),
                    ),
                  ]),
                  ExpansionTile(title: Text("Harvest"), children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Action')),
                            DataColumn(label: Text('Water per Plant')),
                            DataColumn(label: Text('Fertilizer')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('Ripe fruit harvest')),
                              DataCell(Text('400-450 (mL)')),
                              DataCell(Text('N/A')),
                            ]),
                            // Add more rows as needed
                          ],
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Adjust according to your preference
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Add your functionality here
                  Navigator.pushNamed(context, '/applySched');
                  print('Apply Schedule button pressed');
                },
                child: Text(
                  'Apply Schedule',
                  style: TextStyle(fontFamily: "Rokkitt", color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

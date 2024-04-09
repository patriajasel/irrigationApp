import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class schedInformation extends StatefulWidget {
  const schedInformation({super.key});

  @override
  State <schedInformation> createState() =>  schedInformationState();
}

class  schedInformationState extends State <schedInformation> {
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
      body: Stack(
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
                        backgroundImage: AssetImage("assets/photos/Tomato.jpg"), // Your image URL
                      ),
                    ),
                    SizedBox(height: 8), // Add space between the photo and text
                    Text(
                      'Tomato', // Add your text here
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Rokkitt"),
                    ),
                    SizedBox(height: 20), // Add space between the text and DataTable
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('Di ko pa alam')),
                        DataColumn(label: Text('Di ko pa alam')),
                        DataColumn(label: Text('Di ko pa alam')),
                        DataColumn(label: Text('Di ko pa alam')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('Ewan')),
                          DataCell(Text('Ewan')),
                          DataCell(Text('Ewan')),
                          DataCell(Text('Ewan')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Ewan')),
                          DataCell(Text('Ewan')),
                          DataCell(Text('Ewan')),
                          DataCell(Text('Ewan')),
                        ]),
                        // Add more rows as needed
                      ],
                    ),
                  ),  
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
                child: Text('Apply Schedule', style: TextStyle(fontFamily: "Rokkitt", color: Colors.blue),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
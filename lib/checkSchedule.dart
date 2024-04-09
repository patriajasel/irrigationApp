import 'package:flutter/material.dart';

class ViewSchedule extends StatelessWidget {
  const ViewSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, 
        foregroundColor: Colors.white,
        title: Text(
          "View Schedules",
          style: TextStyle(
          fontFamily: "Rokkitt", 
          ),
        ),
      ),

      body: ListView.builder(
  itemCount: 5, // Number of cards
  itemBuilder: (BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.yard, size: 40.0, color: Colors.green), 
            Text(
              '4:00 PM',
              style: TextStyle(fontFamily: "Rokkitt", fontWeight: FontWeight.bold, fontSize: 28.0),
            ),
            SizedBox(height: 8.0), // Spacing between title and subtitle
            Text(
              'Node #: 1 \nPlant type: Tomato \n500 ml',
              style: TextStyle(fontSize: 16.0, fontFamily: "Rokkitt"),
            ),
          ],
        ),
      ),
    );
  },
),


    );
  }
}
import 'package:flutter/material.dart';
import 'bottomNavBar.dart';
import 'tankMonitor.dart';
import 'nodeMonitor.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, // Background color for the AppBar
        title: Center(
          // Center the text within the AppBar
          child: Text(
            'Smart Irrigation App',
            style: TextStyle(fontFamily: "Rokkitt", fontSize: 27.0),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/blueConnection');
            },
            icon: const Icon(Icons.bluetooth),
            tooltip: 'Connect to a Device',
          ),
        ],
        leading: Text(""),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                tankMonitor(),
                nodesListView(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/soilIdentify');
        },
        tooltip: 'Irrigate',
        child: Icon(Icons.water_drop, color: Colors.blue),
        elevation: 0,
        shape: CircleBorder(
          side: BorderSide(
              color: Colors.blue, width: 3.0, style: BorderStyle.solid),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.blue, 
      foregroundColor: Colors.white,// Background color for the AppBar
      title: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center( // Center the text within the AppBar
          child: Text(
            'Smart Irrigation System',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Rokkitt", fontSize: 27.0),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: (){
            Navigator.pushNamed(context, '/checkSched');
          }, 
          icon: const Icon(Icons.bluetooth),
          tooltip: 'Connect to a Device',
        ),
      ],
    );
  }
}
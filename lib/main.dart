import 'package:flutter/material.dart';
import 'package:irrig_app/applySchedScreen.dart';
import 'manualSchedule.dart';
import 'checkSchedule.dart';
import 'splashScreen.dart';
import 'soilIdentifyingScreen.dart';
import 'scheduleInfo.dart';
import 'bluetoothConn.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/manualSched': (context) => const ManualScheduler(),
        '/checkSched': (context) => const ViewSchedule(),
        '/soilIdentify': (context) => const loadingScreen(),
        '/schedInfo': (context) => const schedInformation(),
        '/applySched': (context) => const applySchedule(),
        '/blueConnection': (context) => const bluetoothConnection(),
      },
    );
  }
}

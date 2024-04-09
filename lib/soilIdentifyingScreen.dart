import 'dart:async';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'cropList.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();  

    Timer(const Duration(seconds: 15), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const cropListView()));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset("assets/animations/water_loading.json", height: 250, width: 250, fit: BoxFit.fill),
              ),
              Text(
                "Identifying Soil",
                style: TextStyle(
                  fontFamily: "Rokkitt",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().fadeIn(duration: 600.ms).then(delay: 200.ms).slide(duration: 1.seconds)
      
            ],
          ),
        ), 
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
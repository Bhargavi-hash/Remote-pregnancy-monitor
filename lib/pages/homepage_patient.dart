import 'package:flutter/material.dart';

class patientHomeScreen extends StatefulWidget {
  const patientHomeScreen({ Key? key }) : super(key: key);

  @override
  _patientHomeScreenState createState() => _patientHomeScreenState();
}

class _patientHomeScreenState extends State<patientHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Hello from patient home screen :)')),
      
    );
  }
}
import 'package:flutter/material.dart';

class doctorHomeScreen extends StatefulWidget {
  const doctorHomeScreen({ Key? key }) : super(key: key);

  @override
  _doctorHomeScreenState createState() => _doctorHomeScreenState();
}

class _doctorHomeScreenState extends State<doctorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Hello from doctor home screen :)')),
    );
  }
}
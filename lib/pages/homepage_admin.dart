import 'package:flutter/material.dart';

class adminHomeScreen extends StatefulWidget {
  const adminHomeScreen({ Key? key }) : super(key: key);

  @override
  _adminHomeScreenState createState() => _adminHomeScreenState();
}

class _adminHomeScreenState extends State<adminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Hello from admin home screen :)')),  
    );
  }
}
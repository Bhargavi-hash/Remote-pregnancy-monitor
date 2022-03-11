import 'dart:convert';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:http/http.dart' as http;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './vitals_input.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class patientHomeScreen extends StatefulWidget {
  const patientHomeScreen({Key? key}) : super(key: key);

  @override
  _patientHomeScreenState createState() => _patientHomeScreenState();
}

class _patientHomeScreenState extends State<patientHomeScreen> {
  String _name = "";
  String _email = "";
  String _phoneNumber = "";
  final FirebaseAuth auth = FirebaseAuth.instance;
  int navigationIndex = 0;
  GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');

  @override
  _fetch() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('registration')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        setState(() {
          _name = ds.data()!['fullName'];
          _email = ds.data()!['email'];
          _phoneNumber = ds.data()!['phoneNumber'];
        });

        print(ds.data());
        print('$_email,$_phoneNumber');
      });
    }
  }

  void initState() {
    _fetch();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.pink,
          items: <Widget>[
            Icon(
              Icons.person,
              size: 30,
              color: Colors.pink,
            ),
            Icon(
              Icons.list_alt_outlined,
              size: 30,
              color: Colors.pink,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.pink,
            ),
          ],
          onTap: (index) {
            //Handle button tap
            // setState(() {
            //   navigationIndex = index;
            switch (index) {
              case 1:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => vital_parameters_screen()));
                break;
            }
            // });
          },
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: 200.0,
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.contain,
                  )),
              Text(
                'Your Profile',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '$_name',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '$_phoneNumber',
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ]),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      _email,
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ]),
                ),
              ),
              // FutureBuilder(
              //   future: _fetch(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState != ConnectionState.done)
              //       return Text("Loading data...Please wait");
              //     return Text("");
              //   },
              // )
            ],
          ),
        )),
        backgroundColor: Colors.pink[50],
      ),
    );
  }
}

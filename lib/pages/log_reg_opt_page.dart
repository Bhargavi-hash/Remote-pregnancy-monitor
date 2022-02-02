import 'package:dass_rpm/pages/register.dart';
import 'package:flutter/material.dart';

import '../pages/login.dart';

class logRegOptions extends StatefulWidget {
  const logRegOptions({Key? key}) : super(key: key);

  @override
  _logRegOptionsState createState() => _logRegOptionsState();
}

class _logRegOptionsState extends State<logRegOptions> {
  @override
  Widget build(BuildContext context) {
    // Button redirecting to login page
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(3),
      color: Colors.pink,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ),
    );
    // Button redirecting to registration page
    final registrationButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(3),
      color: Colors.green,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => registration()));
        },
        child: Text(
          "Create Account",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                loginButton,
                SizedBox(
                  height: 15,
                ),
                registrationButton,
                SizedBox(
                  height: 25,
                ),
              ]),
        ),
      ),
    );
  }
}

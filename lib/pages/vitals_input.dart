import 'package:flutter/material.dart';


class vital_parameters_screen extends StatelessWidget {
  const vital_parameters_screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 34, 74, 94),
            title: Text("MOTHER'S VITALS UPLOAD"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Mother's Email",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 43, 121, 160),
                      fontWeight: FontWeight.w500,
                    ),
                    suffixIcon: Icon(Icons.mail_outline),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: InputDecoration(
                    hintText: "First Name   Last Name",
                    labelText: "Name of the Mother",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 43, 121, 160),
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: InputDecoration(
                    hintText: null,
                    labelText: "Current Week of Pregnancy",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 43, 121, 160),
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: InputDecoration(
                    hintText: "dd-MMM-yyyy HH:mm:ss",
                    labelText: "Your Expected Delivery Date",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 43, 121, 160),
                      fontWeight: FontWeight.w500,
                    ),
                    suffixIcon: Icon(Icons.date_range_outlined),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.datetime,
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: InputDecoration(
                    hintText: "dd-MMM-yyyy",
                    labelText: "Your last Visit to Clinic",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 43, 121, 160),
                      fontWeight: FontWeight.w500,
                    ),
                    suffixIcon: Icon(Icons.date_range_outlined),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.datetime,
              ),
            ]),
          )),
    );
  }
}

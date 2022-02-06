// import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'web_view_container.dart';

class blogPage extends StatefulWidget {
  const blogPage({Key? key}) : super(key: key);

  @override
  _blogPageState createState() => _blogPageState();
}

class _blogPageState extends State<blogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.pink,
        items: <Widget>[
          Icon(
            Icons.list,
            size: 30,
            color: Colors.pink,
          ),
          Icon(
            Icons.star_border_rounded,
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
        },
      ),

      appBar: AppBar(
        title: Text('Blogs :)'),
      ),
      key: Key('123'),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 4',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 6',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 7',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 8',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 9',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 10',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 11',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 13',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 14',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
                 Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 15',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 16',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 17',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 18',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 19',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 20',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 21',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 22',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 23',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 24',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 25',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 26',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 27',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
            Container(
                color: Colors.white,
                height: 140,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Row(children: <Widget>[
                  Column(children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      child: Text(
                        'Week 28',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () => _handleURLButtonPress(context, '#'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])
                ])),
          ]))),

      
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}

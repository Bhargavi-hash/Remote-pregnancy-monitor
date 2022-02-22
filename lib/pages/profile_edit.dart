import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FormScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return FormScreenState();
  }
}
class FormScreenState extends State<FormScreen>{
  String _name="";
  String _email="";
  String _phoneNumber="";
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'FullName'),
      // onSaved: (String value){
      //   _name=value;
      // },
    );
  }
  Widget _buildphoneNumber(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'PhoneNumber'),
      // onSaved: (String value){
      //   _name=value;
      // },
    );
  }
  Widget _buildEmail(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      // onSaved: (String value){
      //   _name=value;
      // },
    );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
  }
  Widget _buildProfileImage()=>CircleAvatar(
    backgroundImage: 
    AssetImage('assets/images/image.jpg'),
    radius:100
    )
  ;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page'),),
      body:Container(
        margin: EdgeInsets.all(100),
        child: Form(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildProfileImage(),
            _buildEmail(),
            _buildName(),
            _buildphoneNumber()
          ],)),
      )
    );
  }
}

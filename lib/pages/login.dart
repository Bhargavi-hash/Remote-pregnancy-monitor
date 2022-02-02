import 'package:flutter/material.dart';
import '../pages/register.dart';
import '../pages/homePage_patient.dart';
import '../pages/homePage_doctor.dart';
import '../pages/homePage_admin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Check box value for user (Patients, doctors, and admins)
  bool patient = false;
  bool doctor = false;
  bool admin = false;

  bool showPassword =
      true; //boolean value to track password view enable disable.

  // form key
  final _formKey = GlobalKey<FormState>();

  // Editing controllers
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.pink;
    }

    // Check box for patient role
    final userField1 = Row(children: <Widget>[
      Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: patient,
          onChanged: (bool? value1) {
            if (doctor || admin) {
              setState(() {
                doctor = false;
                admin = false;
              });
            }
            setState(() {
              patient = value1!;
            });
          }),
      Text(
        'Patient ',
        style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
      ),
      SizedBox(width: 3),
    ]);

    // Check box for doctor role
    final userField2 = Row(children: <Widget>[
      Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: doctor,
          onChanged: (bool? value2) {
            if (patient || admin) {
              setState(() {
                patient = false;
                admin = false;
              });
            }
            setState(() {
              doctor = value2!;
            });
          }),
      Text(
        'Doctor ',
        style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
      ),
      SizedBox(width: 3),
    ]);

    // Check box for admin role
    final userField3 = Row(children: <Widget>[
      Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: admin,
          onChanged: (bool? value3) {
            if (patient || doctor) {
              setState(() {
                patient = false;
                doctor = false;
              });
            }
            setState(() {
              admin = value3!;
            });
          }),
      Text(
        'Admin ',
        style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
      ),
      SizedBox(width: 3),
    ]);
    // Email entry
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
      ),
    );

    // Password entry
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: showPassword,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (showPassword) {
                  showPassword = false;
                } else {
                  showPassword = true;
                }
              });
            },
            icon: Icon(showPassword == false
                ? Icons.visibility
                : Icons.visibility_off)),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(3),
      color: Colors.pink,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (patient) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => patientHomeScreen()));
          }
          if (doctor) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => doctorHomeScreen()));
          }
          if (admin) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => adminHomeScreen()));
          }
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ),
    );

    final forgotPassword = Material(
      borderRadius: BorderRadius.circular(3),
      color: Colors.grey,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "Forgot Password",
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
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: _formKey,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          userField1,
                          SizedBox(
                            width: 15,
                          ),
                          userField2,
                          SizedBox(
                            width: 15,
                          ),
                          userField3,
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      emailField,
                      SizedBox(
                        height: 15,
                      ),
                      passwordField,
                      SizedBox(
                        height: 45,
                      ),
                      loginButton,
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => registration()));
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                color: Colors.green[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 140,
                      ),
                      forgotPassword,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

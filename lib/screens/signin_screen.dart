import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/reusable_widget/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget("images/gambar1.png"),
              SizedBox(height: 30),
              reusableTextField("Enter Username", Icons.person_outline, false, _emailTextController),
              SizedBox(height: 20),
              reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
              SizedBox(height: 20),
              signInSignUpButton(context, true, () {})
            ],
          ),
        ),
      ),
    ));
  }
}

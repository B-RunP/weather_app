import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:hive/hive.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              Image.asset('images/gambar1.png', width: 240.0),
              TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person_outline, size: 20),
                      hintText: "Masukan Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
            ],
          ),
        ),
      ),
    ));
  }
}

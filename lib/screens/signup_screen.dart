import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/reusable_widget/reusable_widget.dart';
import 'package:myapp/screens/signin_screen.dart';
import 'package:myapp/screens/home_screen.dart';

class SignupScreen extends StatefulWidget {
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Usernamer", Icons.person_outline, false, _userNameController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Email", Icons.person_outline, false, _userEmailController),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextField("Enter Password", Icons.lock_outline, false, _userPasswordController),
                      const SizedBox(
                        height: 20,
                      ),
                      signInSignUpButton(context, false, () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email: _userEmailController.text, password: _userPasswordController.text).then((value) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      })
                    ])))));
  }
}

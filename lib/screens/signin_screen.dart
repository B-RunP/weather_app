import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:hive/hive.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              Image.asset('images/gambar1.png', width: 240.0),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  controller: _userEmailController,
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person_outline, size: 20),
                      hintText: "Masukan Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _userPasswordController,
                obscureText: hidePass,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open_outlined, size: 20),
                  labelText: "Password",
                  hintText: "Masukan Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _userEmailController.text,
                          password: _userPasswordController.text);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    } on FirebaseAuthException catch (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(error.message.toString())));
                    }
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: OutlinedButton.icon(
                  icon: Image.asset("images/gambar2.png"),
                  // icon: Icon(Icons.facebook_sharp),
                  onPressed: () {},
                  label: Text('Sign in with Google'),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Dont have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text(
                    "Sign up",
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    ));
  }
}

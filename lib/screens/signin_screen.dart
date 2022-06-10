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
  TextEditingController passwordController = TextEditingController();

  bool hidePass = true;

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
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person_outline, size: 20),
                      hintText: "Masukan Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: hidePass,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open_outlined, size: 20),
                  labelText: "Password",
                  hintText: "Masukan Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    if (userNameController.text == 'user_uts' && passwordController.text == "pass_uts") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Berhasil Login'),
                      ));

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Username atau password salah'),
                      ));
                    }
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

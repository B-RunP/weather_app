import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/signup_screen.dart';

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
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false, // set it to false
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('images/gambar1.png', width: 200.0),
              Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              SizedBox(height: 10),
              Text(
                'Login in to existant acount',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: TextFormField(
                      controller: userNameController,
                      decoration: InputDecoration(
                          labelText: "Username",
                          prefixIcon: Icon(Icons.person_outline, size: 20),
                          hintText: "Masukan Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: hidePass,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock_open_outlined, size: 20),
                    hintText: "Masukan Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fitur masih dalam pengembangan')));
                        },
                        child: Text('Forgot Password?'))
                  ])),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (userNameController.text == 'user_uts' && passwordController.text == "pass_uts") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Berhasil Login'),
                      ));

                      var box = Hive.box('userBox');
                      box.put('isLogin', true);

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
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: OutlineButton.icon(
                  icon: Icon(Icons.facebook_sharp),
                  onPressed: () {},
                  label: Text('Sign in with Google'),
                ),
              ),
              // SizedBox(height: 25),
              // Text(
              //   'Or connect using',
              //   style: TextStyle(
              //     color: Colors.black.withOpacity(0.6),
              //   ),
              // ),
              // Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              //       ElevatedButton.icon(
              //         icon: Icon(Icons.facebook_sharp),
              //         style: ElevatedButton.styleFrom(
              //           primary: Colors.blue,
              //           // padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              //         ),
              //         onPressed: () {
              //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fitur masih dalam pengembangan')));
              //         },
              //         label: Text('Facebook'),
              //       ),
              //       ElevatedButton.icon(
              //         icon: Icon(Icons.facebook_sharp),
              //         //icon: Image.asset("images/google.png", height: 22),
              //         style: ElevatedButton.styleFrom(
              //           primary: Colors.red,
              //           // padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              //         ),
              //         onPressed: () {
              //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fitur masih dalam pengembangan')));
              //         },
              //         label: Text('Google'),
              //       ),
              //     ])),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Dont have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        "Sign up",
                      ),
                    ),
                  ])),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}

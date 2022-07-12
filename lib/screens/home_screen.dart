import 'package:flutter/material.dart';
import 'package:myapp/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/screens/weather_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text('Home Breng', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 150,
          height: 30,
          child: MaterialButton(
            padding: EdgeInsets.all(8.0),
            textColor: Colors.white,
            splashColor: Colors.greenAccent,
            elevation: 8.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/weather.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Cuaca"),
              ),
            ),
            // ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
            },
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.green,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(30),
          //     ),
          //   ),
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
          //   },
          //   child: Text('Logout'),
          // ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 150,
          height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherScreen()));
            },
            child: Text('Cuaca'),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 150,
          height: 30,
        ),
      ]),
    );
  }
}

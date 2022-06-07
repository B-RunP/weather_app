import 'package:flutter/material.dart';
import 'package:myapp/screens/signin_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text('Nama: Brian Purnama Putra', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Center(
          child: Text('NIM: 190103003', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
              var box = Hive.box('userBox').clear();

              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => SignInScreen()),
              );
            },
            child: Text('Logout'),
          ),
        ),
      ]),
    );
  }
}

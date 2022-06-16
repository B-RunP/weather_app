import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final _cityTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: SizedBox(
              width: 150,
              child: TextField(controller: _cityTextController, decoration: InputDecoration(labelText: 'City'), textAlign: TextAlign.center),
            )),
        ElevatedButton(onPressed: _search, child: Text('search'))
      ],
    )));
  }
}

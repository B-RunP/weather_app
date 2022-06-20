import 'package:flutter/material.dart';
import 'package:myapp/data/data_service.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
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
    ))));
  }

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
  }
}

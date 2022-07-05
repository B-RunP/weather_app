import 'package:flutter/material.dart';
import 'package:myapp/data/weather_data.dart';
import 'package:myapp/models/weather_model.dart';

class WeatherScreen extends StatefulWidget {
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

  WeatherResponse _response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (_response != null)
          Column(
            children: [
              Image.network(_response.iconUrl),
              Text(
                '${_response.tempInfo.temperature}°',
                style: TextStyle(fontSize: 40),
              ),
              Text(_response.weatherInfo.description)
            ],
          ),
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
    setState(() => _response = response);
  }
}

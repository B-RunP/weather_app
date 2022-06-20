import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/models/models.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParameters = {
      'q': city,
      'appid': '89d78bebc5d33c6ddb29c753c3cc7d64',
      'units': 'imperial'
    };

    final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}

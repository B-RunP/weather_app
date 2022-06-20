/*
{
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "main": {
    "temp": 282.55,
    "feels_like": 281.86,
    "temp_min": 280.37,
    "temp_max": 284.26,
    "pressure": 1023,
    "humidity": 100
  },
  "name": "Mountain View",
  "cod": 200
  }            
*/

class WeatherResponse {
  final String cityName;

  WeatherResponse({this.cityName = ""});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    return WeatherResponse(cityName: cityName);
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey;
  final String baseUrl = "https://api.openweathermap.org/data/2.5/weather";

  WeatherService(this.apiKey);

  Future<Map<String, dynamic>> getWeather(String city) async {
    String url = "$baseUrl?q=$city&appid=$apiKey";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(
          "Failed to fetch weather data. Status code: ${response.statusCode}");
    }
  }
}

void main() async {
  String apiKey = "7c4ac0455cf1f1e9973c17fe87f9c809";
  String city = "Addis Ababa";

  WeatherService weatherService = WeatherService(apiKey);
  try {
    Map<String, dynamic> weatherData = await weatherService.getWeather(city);
    double temperature = weatherData['main']['temp'];
    String conditions = weatherData['weather'][0]['description'];

    print("Current Temperature: $temperature °C");
    print("Weather Conditions: $conditions");
  } catch (e) {
    print("Error: $e");
  }
}

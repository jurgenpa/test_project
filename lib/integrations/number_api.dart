import 'dart:convert';
import 'package:http/http.dart'  as http;
import 'package:test_project/integrations/models/number_object.dart';

class WeatherApiIntegration {
  static Future<NumberApiObject> getWeatherInfo() async {
    http.Response response = await http.get(Uri.parse(
        'https://csrng.net/csrng/csrng.php?min=1&max=1000'));

    if (response.statusCode == 200) {
      NumberApiObject object = NumberApiObject.fromJson(jsonDecode(response.body));
      return object;
    } else {
      throw Exception('Failed to load the number');
    }
  }
}
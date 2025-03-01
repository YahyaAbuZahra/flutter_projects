import 'package:weather_app/models/weather_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com v1/';
  String apiKey = '9d462a77d8c240ceb87847092520020';

  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
      '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7',
    );
    http.Response response = await http.get(url);

    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}

  // Future<WeatherModel> getForcast({required String cityName}) async {
  //   Response response = await dio.get(
  //     '$baseUrl/forecast.json?key=9d462a77d8c240ceb8784709252002&q=$cityName&days=1&aqi=no&alerts=no',
  //   );

  //   WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  //   return weatherModel;
  // }
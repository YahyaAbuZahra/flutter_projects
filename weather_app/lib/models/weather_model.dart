class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final double weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.date,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
  });
  // لما بدي اعمل موديل مربوط ب apı عشان اوصل لعنصر داخل list بستخدم index
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      cityName: json['location']['name'],
      date: json['current']['last_updated'],

      temp: json['forecast']['forecastsay']['date'][0]['day']['avgtemp_c'],

      maxTemp: json['forecast']['forecastsay'][0]['day']['maxtemp_c'],

      minTemp: json['forecast']['forecastsay'][0]['day']['mintemp_c'],
      weatherCondition:
          json['forecast']['forecastsay'][0]['day']['condition']['text'],
    );
  }
}

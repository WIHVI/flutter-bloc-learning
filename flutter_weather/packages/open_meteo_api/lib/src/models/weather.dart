class Weather {
  const Weather({
    required this.temperature,
    required this.weatherCode,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        temperature: json['temperature'],
        weatherCode: json['weatherCode'],
      );

  final double temperature;
  final double weatherCode;
}

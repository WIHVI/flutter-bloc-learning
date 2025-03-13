import 'package:equatable/equatable.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

class Weather extends Equatable {
  const Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        location: json['location'],
        temperature: json['temperature'],
        condition: json['condition'],
      );

  Map<String, dynamic> toJson() => {
        'location': location,
        'temperature': temperature,
        'condition': condition,
      };

  final String location;
  final double temperature;
  final WeatherCondition condition;

  @override
  List<Object> get props => [location, temperature, condition];
}

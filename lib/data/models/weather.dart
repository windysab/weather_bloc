import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  const Weather({
    required this.country,
    required this.description,
    required this.icon,
    required this.lastUpdated,
    required this.name,
    required this.temp,
    required this.tempMax,
    required this.tempMin,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final weather = json['weather'][0];
    final main = json['main'];

    return Weather(
        country: '',
        description: weather['description'],
        icon: weather['icon'],
        lastUpdated: DateTime.now(),
        name: '',
        temp: main['temp'],
        tempMax: main['temp_max'],
        tempMin: main['temp_min']);
  }

  factory Weather.initial() => Weather(
      country: '',
      description: '',
      icon: '',
      lastUpdated: DateTime(1970),
      name: '',
      temp: 100.0,
      tempMax: 100.0,
      tempMin: 100.0);

  final String country;
  final String description;
  final String icon;
  final DateTime lastUpdated;
  final String name;
  final double temp;
  final double tempMax;
  final double tempMin;

  @override
  List<Object> get props {
    return [
      country,
      description,
      icon,
      lastUpdated,
      name,
      temp,
      tempMax,
      tempMin,
    ];
  }

  @override
  String toString() {
    return 'Weather(country: $country, description: $description, icon: $icon, lastUpdated: $lastUpdated, name: $name, temp: $temp, tempMax: $tempMax, tempMin: $tempMin,)';
  }

  Weather copyWith({
    String? country,
    String? description,
    String? icon,
    DateTime? lastUpdated,
    String? name,
    double? temp,
    double? tempMax,
    double? tempMin,
  }) {
    return Weather(
      country: country ?? this.country,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      name: name ?? this.name,
      temp: temp ?? this.temp,
      tempMax: tempMax ?? this.tempMax,
      tempMin: tempMin ?? this.tempMin,
    );
  }
}

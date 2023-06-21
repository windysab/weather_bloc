import 'package:equatable/equatable.dart';

class DirectGeocoding extends Equatable {
  const DirectGeocoding({
    required this.country,
    required this.lat,
    required this.lon,
    required this.name,
  });

  factory DirectGeocoding.fromJson(List<dynamic> json) {
    final Map<String, dynamic> data = json[0];

    return DirectGeocoding(
        country: data['country'],
        lat: data['lat'],
        lon: data['lon'],
        name: data['name']);
  }

  final String country;
  final double lat;
  final double lon;
  final String name;

  @override
  List<Object> get props => [country, lat, lon, name];

  @override
  String toString() {
    return 'DirectGeocoding(country: $country, lat: $lat, lon: $lon, name: $name)';
  }
}

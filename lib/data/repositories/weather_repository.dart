import 'package:weather_bloc/data/models/custom_error.dart';
import 'package:weather_bloc/data/models/direct_geocoding.dart';
import 'package:weather_bloc/data/models/weather.dart';

import '../services/weather_api_services.dart';


class WeatherRepository {
  WeatherRepository({
    required this.weatherApiServices,
  });

  final WeatherApiServices weatherApiServices;

  Future<Weather> fetcWeather(String city) async {
    try {
      final DirectGeocoding directGeocoding =
          await weatherApiServices.getDirectGeocoding(city);

      final Weather tempWeather =
      await weatherApiServices.getWeather(directGeocoding);

      final Weather weather = tempWeather.copyWith(
        name:  directGeocoding.name,
        country: directGeocoding.country,
      );

      return weather;
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}

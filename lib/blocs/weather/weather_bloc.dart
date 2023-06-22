import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/custom_error.dart';
import '../../data/models/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherState.initial()) {
    on<WeatherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

part of 'temp_settings_bloc.dart';

abstract class TempSettingsEvent extends Equatable {
  const TempSettingsEvent();

  @override
  List<Object> get props => [];
}

class TonggleTempUnitEvent extends TempSettingsEvent {}
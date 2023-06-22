part of 'theme_bloc.dart';

enum AppTheme {
  light,
  dark,
}

class ThemeState extends Equatable {
  const ThemeState({
    this.appTheme = AppTheme.light,
  });

  factory ThemeState.initial() => const ThemeState();

  final AppTheme appTheme;

  @override
  List<Object> get props => [appTheme];

  @override
  String toString() => 'ThemeState(theme: $appTheme)';

  ThemeState copyWith({
    AppTheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}

import 'package:equatable/equatable.dart';

class CustomError extends Equatable {
  final String errMsg;
  const CustomError({
    required this.errMsg,
  });

  @override
  List<Object> get props => [errMsg];

  @override
  String toString() => 'CustomError(errMsg: $errMsg)';
}

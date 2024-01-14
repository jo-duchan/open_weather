import 'package:equatable/equatable.dart';

class CoustomError extends Equatable {
  final String errMsg;

  CoustomError({
    this.errMsg = '',
  });

  @override
  List<Object> get props => [errMsg];

  @override
  String toString() => 'CustomError(errMsg: $errMsg)';
}

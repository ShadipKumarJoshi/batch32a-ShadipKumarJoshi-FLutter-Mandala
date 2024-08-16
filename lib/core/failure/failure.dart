class Failure {
  final String error;
  final String? statusCode;

  Failure(String s, {
    required this.error,
    this.statusCode,
  });
}



// import 'package:equatable/equatable.dart';

// class Failure extends Equatable {
//   final String message;

//   const Failure({required this.message});

//   @override
//   List<Object?> get props => [message];
// }



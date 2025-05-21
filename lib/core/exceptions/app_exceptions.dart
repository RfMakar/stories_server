import 'dart:io';

abstract class AppException implements Exception {
  final String message;
  final int statusCode;

  AppException(
    this.message, [
    this.statusCode = HttpStatus.badRequest,
  ]);

  @override
  String toString() => '$runtimeType: $message';
}



class NotFoundException extends AppException {
  NotFoundException(String message)
      : super(
          message,
          HttpStatus.notFound,
        );
}

class ConflictException extends AppException {
  ConflictException(String message)
      : super(
          message,
          HttpStatus.conflict,
        );
}

class ValidationException extends AppException {
  ValidationException(String message)
      : super(
          message,
          HttpStatus.unprocessableEntity,
        );
}

class ApiKeyException extends AppException {
  ApiKeyException(String message)
      : super(
          message,
          HttpStatus.unauthorized,
        );
}

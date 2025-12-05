abstract base class AppException {
  final dynamic exception;
  final StackTrace? stackTrace;

  AppException({
    required this.exception,
    required this.stackTrace,
  });
}

abstract base class HttpException extends AppException {
  final String url;
  HttpException({
    required super.exception,
    required super.stackTrace,
  }) : url = exception.response?.realUri.toString() ?? '';
}

final class BadRequestException extends HttpException {
  final String? message;
  final dynamic data;

  BadRequestException({
    required super.exception,
    required super.stackTrace,
    required this.message,
    this.data,
  });
}

final class UnauthorizedException extends HttpException {
  UnauthorizedException({
    required super.exception,
    required super.stackTrace,
  });
}

final class ForbiddenException extends HttpException {
  ForbiddenException({
    required super.exception,
    required super.stackTrace,
  });
}

final class NotFoundException extends HttpException {
  NotFoundException({
    required super.exception,
    required super.stackTrace,
  });
}

final class InternalServerErrorException extends HttpException {
  InternalServerErrorException({
    required super.exception,
    required super.stackTrace,
  });
}

final class ServiceUnavailableException extends HttpException {
  final int? statusCode;
  ServiceUnavailableException({
    required super.exception,
    required super.stackTrace,
    required this.statusCode,
  });
}

final class CancleTokenException extends AppException {
  CancleTokenException({required super.exception, required super.stackTrace});
}

final class NetworkException extends AppException {
  NetworkException({required super.exception, required super.stackTrace});
}

final class OutOfMemoryErrorException extends AppException {
  OutOfMemoryErrorException(
      {required super.exception, required super.stackTrace});
}

final class StackOverflowErrorException extends AppException {
  StackOverflowErrorException(
      {required super.exception, required super.stackTrace});
}

final class ParseException extends AppException {
  ParseException({required super.exception, required super.stackTrace});
}

final class UnknownException extends AppException {
  UnknownException({required super.exception, required super.stackTrace});
}

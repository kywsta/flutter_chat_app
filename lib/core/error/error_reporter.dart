import 'package:flutter/foundation.dart';
import 'package:flutter_chat_app/core/error/exception_factory.dart';
import 'package:flutter_chat_app/core/error/exceptions.dart';

class ErrorReporter {
  static final ErrorReporter _instance = ErrorReporter._internal();

  factory ErrorReporter() {
    return _instance;
  }

  ErrorReporter._internal();

  void reportException(dynamic exception, [StackTrace? stackTrace]) {
    AppException appException;
    if (exception is! AppException) {
      appException = AppExceptionFactory.identifyException(
        exception,
        stackTrace,
      );
    } else {
      appException = exception;
    }

    if (!kDebugMode) {
      _reportToCrashlytics(appException);
    } else {
      _logToConsole(appException);
    }
  }

  void _logToConsole(AppException exception) {
    FlutterError.presentError(exception.toFlutterErrorDetails());
  }

  void _reportToCrashlytics(AppException exception) {
    if (!_shouldReportException(exception)) {
      return;
    }

    FlutterError.reportError(exception.toFlutterErrorDetails());
  }

  bool _shouldReportException(AppException exception) {
    return exception is UnauthorizedException ||
        exception is ForbiddenException ||
        exception is NotFoundException ||
        exception is InternalServerErrorException ||
        exception is ServiceUnavailableException;
  }
}

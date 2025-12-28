import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/error/error_reporter.dart';
import 'package:flutter_chat_app/core/error/exception_factory.dart';
import 'package:flutter_chat_app/core/error/failures.dart';

class ApiCallHandler {
  static Future<Either<T, Failure>> on<T>(Future<T> Function() fn) async {
    try {
      return Left(await fn());
    } catch (e, s) {
      final appException = AppExceptionFactory.identifyException(e, s);
      ErrorReporter().reportException(appException);
      return Right(Failure(exception: appException));
    }
  }
}

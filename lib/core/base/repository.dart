import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/core/error/exception_factory.dart';
import 'package:flutter_chat_app/core/error/failures.dart';

abstract class Repository {
  Future<Either<T, Failure>> on<T>(Future<T> Function() fn) async {
    try {
      return Left(await fn());
    } catch (e, s) {
      final appException = AppExceptionFactory.fromException(e, s);
      FlutterError.presentError(FlutterErrorDetails(exception: appException, stack: appException.stackTrace));
      return Right(Failure(exception: appException));
    }
  }
}

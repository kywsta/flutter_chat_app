import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/core/error/exception_factory.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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

  Future<Either<T, Failure>> onGql<T>(
      Future<QueryResult<T>> Function() fn) async {
    try {
      final result = await fn();

      if (result.exception != null) {
        throw result.exception!;
      }

      return Left(result.parsedData as T);
    } catch (e, s) {
      final appException = AppExceptionFactory.fromException(e, s);
      FlutterError.presentError(FlutterErrorDetails(exception: appException, stack: appException.stackTrace));
      return Right(Failure(exception: appException));
    }
  }

  Stream<T> onGqlStream<T>(Stream<QueryResult<T>> Function() fn) {
    return fn().map((result) {
      if (result.exception != null) {
        throw result.exception!;
      }

      return result.parsedData as T;
    }).handleError((e, s) {
      final appException = AppExceptionFactory.fromException(e, s);
      FlutterError.presentError(FlutterErrorDetails(exception: appException, stack: appException.stackTrace));
    });
  }
}

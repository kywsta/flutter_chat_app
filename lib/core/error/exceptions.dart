import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_chat_app/core/error/error_identity.dart';

abstract base class AppException {
  final dynamic exception;
  final StackTrace? stackTrace;
  late final ErrorIdentity errorIdentity;

  AppException({
    required this.exception,
    required this.stackTrace,
  }) {
    errorIdentity = buildErrorIdentity();
  }

  @override
  String toString() {
    return errorIdentity.description;
  }

  FlutterErrorDetails toFlutterErrorDetails() {
    return FlutterErrorDetails(
      exception: this,
      stack: _buildRefinedStackTrace(),
    );
  }

  StackTrace _buildRefinedStackTrace() {
    final List<String> lines;

    if (stackTrace == null) {
      lines = [];
    } else {
      final stackTraceString = stackTrace.toString();
      lines = stackTraceString.split('\n');
    }

    // Insert the error title at the beginning of the stack trace to make it categorized
    // based on the error identity in the crashlytics
    lines.insert(0,
        "#1     ${errorIdentity.title} (package:your_app/path/file.dart:123:45)");

    final purifiedStackTrace = lines.join('\n');

    return StackTrace.fromString(purifiedStackTrace);
  }

  ErrorIdentity buildErrorIdentity();
}

abstract base class HttpException extends AppException {
  final String url;

  HttpException({
    required super.exception,
    required super.stackTrace,
  }) : url = (exception as DioException).response?.realUri.toString() ?? '';
}

final class BadRequestException extends HttpException {
  BadRequestException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    final requestPayload =
        jsonEncode((exception as DioException).requestOptions.data);
    final responsePayload = (exception as DioException).response.toString();

    return ErrorIdentity(
      type: 'Bad Request',
      location: url,
      isSevere: true,
      needsReport: true,
      details: {
        'request': requestPayload,
        'response': responsePayload,
      },
    );
  }
}

final class UnauthorizedException extends HttpException {
  UnauthorizedException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    final requestHeaders =
        jsonEncode((exception as DioException).requestOptions.headers);
    final requestPayload =
        jsonEncode((exception as DioException).requestOptions.data);

    return ErrorIdentity(
      type: 'Unauthorized',
      location: url,
      isSevere: true,
      needsReport: true,
      details: {
        'requestHeaders': requestHeaders,
        'requestPayload': requestPayload,
      },
    );
  }
}

final class ForbiddenException extends HttpException {
  ForbiddenException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    final requestHeaders =
        jsonEncode((exception as DioException).requestOptions.headers);
    final requestPayload =
        jsonEncode((exception as DioException).requestOptions.data);

    return ErrorIdentity(
      type: 'Forbidden',
      location: url,
      isSevere: true,
      needsReport: true,
      details: {
        'requestHeaders': requestHeaders,
        'requestPayload': requestPayload,
      },
    );
  }
}

final class NotFoundException extends HttpException {
  NotFoundException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Not Found',
      location: url,
      isSevere: true,
      needsReport: true,
      details: {},
    );
  }
}

final class InternalServerErrorException extends HttpException {
  InternalServerErrorException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    final requestHeaders =
        jsonEncode((exception as DioException).requestOptions.headers);
    final requestPayload =
        jsonEncode((exception as DioException).requestOptions.data);

    return ErrorIdentity(
      type: 'Internal Server Error',
      location: url,
      isSevere: true,
      needsReport: true,
      details: {
        'requestHeaders': requestHeaders,
        'requestPayload': requestPayload,
      },
    );
  }
}

final class ServiceUnavailableException extends HttpException {
  final int? statusCode;

  ServiceUnavailableException({
    required DioException super.exception,
    required super.stackTrace,
    required this.statusCode,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Service Unavailable',
      location: url,
      isSevere: true,
      needsReport: true,
      details: {
        'statusCode': statusCode.toString(),
      },
    );
  }
}

final class CancleTokenException extends HttpException {
  CancleTokenException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Cancel Token',
      location: url,
      isSevere: false,
      needsReport: false,
      details: {},
    );
  }
}

final class NetworkException extends HttpException {
  NetworkException({
    required DioException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Network',
      location: url,
      isSevere: false,
      needsReport: true,
      details: {
        'reason': (exception as DioException).type.name,
      },
    );
  }
}

final class OutOfMemoryErrorException extends AppException {
  OutOfMemoryErrorException({
    required OutOfMemoryError super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Out of Memory',
      location: 'See the stack trace for more details',
      isSevere: false,
      needsReport: true,
      details: {
        'cause': (exception as OutOfMemoryError).toString(),
      },
    );
  }
}

final class StackOverflowErrorException extends AppException {
  StackOverflowErrorException({
    required StackOverflowError super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Stack Overflow',
      location: 'See the stack trace for more details',
      isSevere: false,
      needsReport: true,
      details: {
        'cause': (exception as StackOverflowError).toString(),
      },
    );
  }
}

final class ParseException extends AppException {
  ParseException({
    required FormatException super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Parse Error',
      location: 'See the stack trace for more details',
      isSevere: false,
      needsReport: true,
      details: {
        'cause': (exception as FormatException).toString(),
      },
    );
  }
}

final class UnknownException extends AppException {
  UnknownException({
    required super.exception,
    required super.stackTrace,
  });

  @override
  ErrorIdentity buildErrorIdentity() {
    return ErrorIdentity(
      type: 'Unknown',
      location: 'See the stack trace for more details',
      isSevere: false,
      needsReport: true,
      details: {
        'cause': (exception as UnknownException).toString(),
      },
    );
  }
}

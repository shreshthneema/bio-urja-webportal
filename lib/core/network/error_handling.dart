import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

enum ExceptionType {
  tokenExpiredException,
  cancelException,
  connectTimeoutException,
  sendTimeoutException,
  receiveTimeoutException,
  fetchDataException,
  formatException,
  unrecognizedException,
  apiException,
  serializationException,
}

class CustomException implements Exception {
  CustomException({
    required this.message,
    this.code,
    int? statusCode,
    this.exceptionType = ExceptionType.apiException,
  })  : statusCode = statusCode ?? 500,
        name = exceptionType.name;

  factory CustomException.fromDioException(Exception error) {
    try {
      debugPrint('${error is DioException} ');
      if (error is DioException) {
        debugPrint(
          '${error.type} ${error.response?.statusCode ?? 'no status'} ${error.response ?? 'no rp'} ${error.message}',
        );
        switch (error.type) {
          case DioExceptionType.connectionTimeout:
            return CustomException(
              exceptionType: ExceptionType.connectTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Connection not established',
            );
          case DioExceptionType.sendTimeout:
            return CustomException(
              exceptionType: ExceptionType.sendTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to send',
            );
          case DioExceptionType.receiveTimeout:
            return CustomException(
              exceptionType: ExceptionType.receiveTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to receive',
            );
          case DioExceptionType.badCertificate:
          case DioExceptionType.connectionError:
            return CustomException(
              exceptionType: ExceptionType.fetchDataException,
              statusCode: error.response?.statusCode,
              message: 'No internet connectivity',
            );
          case DioExceptionType.badResponse:
            // ignore: avoid_dynamic_calls

            final name =
                // ignore: avoid_dynamic_calls
                error.response!.data['error']['status'].toString();

            final message =
                // ignore: avoid_dynamic_calls
                error.response?.data['error']['message'] as String;

            if (name == ExceptionType.tokenExpiredException.name) {
              return CustomException(
                exceptionType: ExceptionType.tokenExpiredException,
                code: name,
                statusCode: error.response?.statusCode,
                message: message,
              );
            }
            return CustomException(
              message: message,
              code: name,
              exceptionType: ExceptionType.fetchDataException,
              statusCode: error.response?.statusCode,
            );
          case DioExceptionType.cancel:
            return CustomException(
              exceptionType: ExceptionType.cancelException,
              statusCode: error.response?.statusCode,
              message: 'Request cancelled prematurely',
            );
          case DioExceptionType.unknown:
            return CustomException(
              exceptionType: ExceptionType.unrecognizedException,
              statusCode: error.response?.statusCode,
              message: error.response?.statusMessage ?? 'Unknown',
            );
        }
      } else {
        return CustomException(
          exceptionType: ExceptionType.unrecognizedException,
          message: 'Error unrecognized',
        );
      }
    } on FormatException catch (e) {
      return CustomException(
        exceptionType: ExceptionType.formatException,
        message: e.message,
      );
    } on Exception catch (_) {
      return CustomException(
        exceptionType: ExceptionType.unrecognizedException,
        message: 'Error unrecognized',
      );
    }
  }

  factory CustomException.fromParsingException(Exception error) {
    // add logging to print stack trace
    debugPrint('$error');
    return CustomException(
      exceptionType: ExceptionType.serializationException,
      message: 'Failed to parse network response to model or vice versa',
    );
  }

  final String name;
  final String message;
  final String? code;
  final int? statusCode;
  final ExceptionType exceptionType;

  @override
  String toString() => {
        'name': name,
        message: message,
        code: code ?? 'no code',
        'statusCode': statusCode ?? 'no status',
        'exception type': exceptionType.name,
      }.toString();
}

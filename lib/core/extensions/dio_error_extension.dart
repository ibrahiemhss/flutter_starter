// coverage:ignore-file
import 'package:dio/dio.dart';
import 'package:flutter_starter/core/core.dart';

extension DioErrorExtension on DioException {
  ServerException toServerException() {
    switch (type) {
      case DioExceptionType.badResponse:
        switch (response?.statusCode) {
          case 401:
            return UnAuthenticationServerException(
              message: '',
              code: response?.statusCode,
            );
          case 403:
            return UnAuthorizeServerException(
              message: '',
              code: response?.statusCode,
            );
          case 404:
            return NotFoundServerException(
              message: '',
              code: response?.statusCode,
            );
          case 500:
          case 502:
            return InternalServerException(
              message: '',
              code: response?.statusCode,
            );
          default:
            return GeneralServerException(
              message: '',
              code: response?.statusCode,
            );
        }

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeOutServerException(
          message: '',
          code: response?.statusCode,
        );

      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        return GeneralServerException(
          message: '',
          code: response?.statusCode,
        );

      case DioExceptionType.badCertificate:
        return GeneralServerException(
          message: 'Invalid SSL Certificate',
          code: response?.statusCode,
        );

      default:
        return GeneralServerException(
          message: 'Unknown error occurred',
          code: response?.statusCode,
        );
    }
  }
}

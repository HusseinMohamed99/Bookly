import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to API server was cancelled");

      case DioExceptionType.connectionError:
        return ServerFailure(
            "Connection to API server failed due to internet connection");

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure("No internet connection");
        }
        return ServerFailure("Unexpected Error, Please try again!");
      default:
        return ServerFailure("Unexpected Error, Please try again!");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please try later!');
    } else {
      return ServerFailure('Something went wrong, Please try later!');
    }
  }
}

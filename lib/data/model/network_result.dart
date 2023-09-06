/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

sealed class NetworkResult<T extends Object> {
  const NetworkResult();

  // static NetworkResult<T> handleRestApi<T extends Object>(
  //     Response Function(Future) execute) {
  //   try {
  //     Response response = execute as Response;
  //
  //     switch (response.statusCode) {
  //       case 200:
  //         return Success(body: response.body);
  //       default:
  //         return Error(
  //             code: response.statusCode, message: response.reasonPhrase);
  //     }
  //   } on HttpException catch (e) {
  //     return Error(code: e.hashCode, message: e.message);
  //   } on Exception catch (e) {
  //     return Throwable(exception: e);
  //   }
  // }
}

final class Success<T extends Object> extends NetworkResult<T> {
  const Success({required this.body});

  // final String body;
  final T body;
}

final class Error<T extends Object> extends NetworkResult<T> {
  const Error({this.code, this.message});

  final int? code;
  final String? message;
}

final class Throwable<T extends Object> extends NetworkResult<T> {
  Throwable({required this.exception});

  final Exception exception;
}

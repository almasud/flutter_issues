/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'dart:io';

import 'package:http/http.dart';

sealed class NetworkResult<T extends Object> {
  const NetworkResult();

  static Future<NetworkResult<T>> handleRestApi<T extends Object>(
      Future Function() execute) async {
    try {
      Response response = (await execute()) as Response;

      switch (response.statusCode) {
        case 200:
          return Success(body: response.body);
        default:
          return Error(
              code: response.statusCode, message: response.reasonPhrase);
      }
    } on HttpException catch (e) {
      return Error(code: e.hashCode, message: e.message);
    } on Exception catch (e) {
      return Throwable(exception: e);
    }
  }
}

final class Success<T extends Object> extends NetworkResult<T> {
  const Success({required this.body});

  final String body;
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

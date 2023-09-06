/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/domain/repo/home_repo.dart';
import 'package:flutter_issues/utils/constants.dart';
import 'package:http/http.dart';

class HomeRepoImpl extends HomeRepo {
  static const String _issuesUrl = "repos/flutter/flutter/issues";

  @override
  // Future<NetworkResult<List<RepoIssue>>> getRepoIssues(
  Future<List<RepoIssue>> getRepoIssues(
      {required int currentPage,
      String labels = ""}) async {
    final Map<String, String> queryParameters = {
      'page': currentPage.toString(),
      'per_page': Constants.itemPerPage.toString(),
      'labels': labels,
    };
    debugPrint(
        "getRepoIssues: queryParameters: $queryParameters");

    try {
    final url = '${Constants.baseUrl}/$_issuesUrl?page=$currentPage&per_page=${Constants.itemPerPage}&labels=$labels';
    final Uri uri = Uri.parse(url);
    debugPrint("getRepoIssues: uri: $uri");
    Response response = await get(uri);
    // debugPrint("getRepoIssues: response: ${response.body}");

    switch (response.statusCode) {
      case 200:
        // return Success(body: repoIssuesFromJson(response.body));
        return repoIssuesFromJson(response.body);
      default:
        // return Error(
        //     code: response.statusCode, message: response.reasonPhrase);
        debugPrint("getRepoIssues: error: ${response.reasonPhrase}");
        throw "error: ${response.reasonPhrase}";
    }
    } on HttpException catch (e) {
      debugPrint("getRepoIssues: HttpException: ${e.message}");
      // return Error(code: e.hashCode, message: e.message);
      throw "error: ${e.toString()}";
    } on Exception catch (e) {
      debugPrint("getRepoIssues: Exception: ${e.toString()}");
      // return Throwable(exception: e);
      throw "error: ${e.toString()}";
    }
  }
}

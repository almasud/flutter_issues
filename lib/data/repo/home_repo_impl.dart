/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/domain/repo/home_repo.dart';
import 'package:flutter_issues/utils/constants.dart';
import 'package:http/http.dart';

class HomeRepoImpl extends HomeRepo {
  static const String _issuesUrl = "/repos/flutter/flutter/issues";

  @override
  // Future<NetworkResult<List<RepoIssue>>> getRepoIssues(
  Future<List<RepoIssue>> getRepoIssues(
      {required int currentPage,
      int itemPerPage = 20,
      String labels = ""}) async {
    final Map<String, String> queryParameters = {
      'page': currentPage.toString(),
      'per_page': itemPerPage.toString(),
      'labels': labels,
    };
    debugPrint(
        "getRepoIssues: queryParameters: $queryParameters");

    // try {
    Uri url =
        Uri.https(Constants.baseUrl, _issuesUrl, queryParameters);
    debugPrint("getRepoIssues: url: $url");
    Response response = await get(url);
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
    // } on HttpException catch (e) {
    //   debugPrint("getRepoIssues: HttpException: ${e.message}");
    //   return Error(code: e.hashCode, message: e.message);
    // } on Exception catch (e) {
    //   debugPrint("getRepoIssues: Exception: ${e.toString()}");
    //   return Throwable(exception: e);
    // }
  }
}

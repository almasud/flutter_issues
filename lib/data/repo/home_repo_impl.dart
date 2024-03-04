/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter_issues/data/model/network_result.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/domain/repo/home_repo.dart';
import 'package:flutter_issues/utils/constants.dart';
import 'package:http/http.dart';

class HomeRepoImpl extends HomeRepo {
  static const String _issuesUrl = "repos/flutter/flutter/issues";

  @override
  Future<NetworkResult<List<RepoIssue>>> getRepoIssues(
      {required int currentPage, String labels = ""}) async {
    final Map<String, String> queryParameters = {
      'page': currentPage.toString(),
      'per_page': Constants.itemPerPage.toString(),
      'labels': labels,
    };
    debugPrint("getRepoIssues: queryParameters: $queryParameters");

    final url =
        '${Constants.baseUrl}/$_issuesUrl?page=$currentPage&per_page=${Constants.itemPerPage}&labels=$labels';
    final Uri uri = Uri.parse(url);
    debugPrint("getRepoIssues: uri: $uri");

    return NetworkResult.handleRestApi(() => get(uri));
  }
}

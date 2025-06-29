/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'package:flutter_issues/data/model/network_result.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';

abstract class HomeRepo {
  Future<NetworkResult<List<RepoIssue>>> getRepoIssues(
      {required int currentPage, String labels});
}

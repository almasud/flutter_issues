/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

part of 'home_bloc.dart';

class HomeState extends Equatable {
  final HomeUiStatus uiStatus;
  final List<RepoIssue>? repoIssues;
  final String? message;

  const HomeState(
      {this.uiStatus = HomeUiStatus.loading, this.repoIssues, this.message});

  HomeState copyWith(
      {required HomeUiStatus uiStatus,
      List<RepoIssue>? repoIssues,
      String? message}) {
    return HomeState(
        uiStatus: uiStatus,
        repoIssues: repoIssues ?? this.repoIssues,
        message: message ?? this.message);
  }

  @override
  List<Object?> get props => [uiStatus, repoIssues, message];
}

enum HomeUiStatus { loading, success, failed }

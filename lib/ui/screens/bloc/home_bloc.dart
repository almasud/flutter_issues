/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issues/data/model/network_result.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/domain/repo/home_repo.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo homeRepo;

  HomeBloc({required this.homeRepo}) : super(const HomeState()) {
    on<FetchIssuesFromRemote>(_onFetchIssuesFromRemote);
  }

  Future<FutureOr<void>> _onFetchIssuesFromRemote(
      FetchIssuesFromRemote event, Emitter<HomeState> emit) async {
    // Set loading before fetching data from remote
    emit(state.copyWith(uiStatus: HomeUiStatus.loading));

    final response = await homeRepo.getRepoIssues(
        currentPage: event.currentPage, labels: event.labels.join(','));

    switch (response) {
      case Success():
        emit(state.copyWith(
            uiStatus: HomeUiStatus.success,
            repoIssues: repoIssuesFromJson((response).body)));
        break;
      case Error():
        emit(state.copyWith(
            uiStatus: HomeUiStatus.failed, message: (response).message));
        break;
      case Throwable():
        emit(state.copyWith(
            uiStatus: HomeUiStatus.failed,
            message: (response).exception.toString()));
        break;
      default:
        emit(state.copyWith(
            uiStatus: HomeUiStatus.failed, message: "Something went wrong!"));
    }
  }
}

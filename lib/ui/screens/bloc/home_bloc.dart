/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issues/domain/model/repo_issue.dart';
import 'package:flutter_issues/domain/repo/home_repo.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo homeRepo;

  HomeBloc({required this.homeRepo}) : super(const HomeState()) {
    on<FetchRepoIssuesFromRemote>(_onFetchRepoIssuesFromRemote);
  }

  Future<FutureOr<void>> _onFetchRepoIssuesFromRemote(
      FetchRepoIssuesFromRemote event, Emitter<HomeState> emit) async {
    // Set loading before fetching data from remote
    emit(state.copyWith(uiStatus: HomeUiStatus.loading));

    try {
      final response = await homeRepo.getRepoIssues(
          currentPage: event.currentPage, itemPerPage: event.itemPerPage);
      emit(
          state.copyWith(uiStatus: HomeUiStatus.success, repoIssues: response));
    } on Exception catch (e) {
      emit(
          state.copyWith(uiStatus: HomeUiStatus.failed, message: e.toString()));
    }

    // switch (response) {
    //   case Success:
    //     emit(state.copyWith(
    //         uiStatus: HomeUiStatus.success,
    //         repoIssues: (response as Success<List<RepoIssue>>).body));
    //     break;
    //   case Error:
    //     emit(state.copyWith(
    //         uiStatus: HomeUiStatus.failed,
    //         message: (response as Error).message));
    //     break;
    //   case Throwable:
    //     emit(state.copyWith(
    //         uiStatus: HomeUiStatus.failed,
    //         message: (response as Throwable).exception.toString()));
    //     break;
    //   default:
    //     emit(state.copyWith(
    //         uiStatus: HomeUiStatus.failed,
    //         message: "Something went wrong!"));
    // }
  }
}

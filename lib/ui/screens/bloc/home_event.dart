/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class FetchIssuesFromRemote extends HomeEvent {
  const FetchIssuesFromRemote(
      {required this.currentPage, this.itemPerPage = 20});

  final int currentPage;
  final int itemPerPage;

  @override
  List<Object?> get props => [currentPage, itemPerPage];
}

class FetchIssuesFromRemoteByLabels extends HomeEvent {
  const FetchIssuesFromRemoteByLabels(
      {required this.currentPage,
      this.itemPerPage = 20,
      this.labels = const []});

  final int currentPage;
  final int itemPerPage;
  final List<String> labels;

  @override
  List<Object?> get props => [currentPage, itemPerPage, labels];
}

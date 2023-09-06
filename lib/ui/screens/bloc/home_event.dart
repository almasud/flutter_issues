/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class FetchRepoIssuesFromRemote extends HomeEvent {
  final int currentPage;
  final int itemPerPage;

  const FetchRepoIssuesFromRemote(
      {required this.currentPage, this.itemPerPage = 20});

  @override
  List<Object?> get props => [];
}

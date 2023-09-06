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
      {required this.currentPage, this.labels = const []});

  final int currentPage;
  final List<String> labels;

  @override
  List<Object?> get props => [currentPage, labels];
}

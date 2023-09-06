/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'package:flutter_issues/data/repo/home_repo_impl.dart';
import 'package:flutter_issues/domain/repo/home_repo.dart';
import 'package:flutter_issues/ui/screens/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class AppComponent {
  Future<void> init() async {
    getIt.registerFactory<HomeRepo>(() => HomeRepoImpl());
    getIt.registerFactory<HomeBloc>(() => HomeBloc(homeRepo: getIt<HomeRepo>()));
  }
}
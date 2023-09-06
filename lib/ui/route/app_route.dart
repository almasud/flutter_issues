/*
 * Copyright (c) 2023.
 * Created by: Abdullah Al Masud
 * Created on: 6/9/2023
 */

import 'package:flutter/material.dart';
import 'package:flutter_issues/ui/route/route_path.dart';
import 'package:flutter_issues/ui/screens/home_screens.dart';
import 'package:flutter_issues/ui/strings.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutePath.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(title: Strings.appTitle),
        );
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => Scaffold(
                  body: Center(
                    child: Text(
                        "${Strings.noRouteDefineFor} ${routeSettings.name!}"),
                  ),
                ));
    }
  }
}

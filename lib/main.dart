import 'package:flutter/material.dart';
import 'package:flutter_issues/ui/route/app_route.dart';
import 'package:flutter_issues/ui/route/route_path.dart';

import 'data/di/app_component.dart';

Future<void> main() async {
  await AppComponent().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: RoutePath.home,
    );
  }
}


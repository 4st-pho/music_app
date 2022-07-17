import 'package:flutter/material.dart';
import 'package:hearme/resources/route_manager.dart';
import 'package:hearme/resources/app_strings.dart';
import 'package:hearme/resources/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hearme/resources/app_color.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColor.background,
    colorScheme: const ColorScheme.dark(),
    dividerColor: AppColor.grey,
  );
}

import 'package:flutter/material.dart';
import 'package:form_builder/home_screen.dart';
import 'package:form_builder/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(),
      themeMode: ThemeMode.light,
      home: HomeScreen(),
    );
  }
}

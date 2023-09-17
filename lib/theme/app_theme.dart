import 'package:flutter/material.dart';
import 'package:form_builder/theme/color_schemes.dart';

class AppTheme {
  static ThemeData lightTheme() {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarBrightness: Brightness.dark,
    //     statusBarColor: Colors.white,
    //     statusBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Colors.white,
    //     systemNavigationBarDividerColor: Colors.white,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //   ),
    // );

    return ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: "Inter",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white, surfaceTintColor: Colors.white),
        filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 50))),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
          )
      ),

    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
        useMaterial3: true, colorScheme: darkColorScheme, fontFamily: "Inter");
  }
}

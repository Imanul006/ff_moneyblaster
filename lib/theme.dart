import 'package:flutter/material.dart';

final ThemeData gameThemeDark = ThemeData(
  // Define your primary and accent colors here
  textTheme: const TextTheme(
    //body
    bodyLarge: TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontSize: 24,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontSize: 14,
    ),
    //headings
    headlineLarge: TextStyle(
      color: Colors.white,
      fontFamily: 'Apex',
      fontSize: 32,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontFamily: 'Apex',
      fontSize: 24,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontFamily: 'Apex',
      fontSize: 16,
    ),
    // You may want to define other text styles as well
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(secondary: Colors.red),
);

import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(24, 24, 24, 1.0),
    primary: Colors.grey,
    secondary: Colors.black54,
    tertiary: Color.fromRGBO(30, 30, 30, 1.0),
  ),
);

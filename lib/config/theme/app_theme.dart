import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(255, 230, 20, 20);

const List<Color> _colorsTheme = [
  customColor,
  Colors.black,
  Colors.lightBlue,
  Colors.orange,
  Colors.teal,
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorsTheme.length,
            'Color must be between 0 and ${_colorsTheme.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsTheme[selectedColor],
    );
  }
}

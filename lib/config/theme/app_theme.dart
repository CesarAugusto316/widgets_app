import 'package:flutter/material.dart';

class AppTheme {
  List<Color> colorsList = [
    Colors.lime,
    Colors.indigo,
    Colors.pink,
    Colors.blueGrey,
    Colors.orange,
    Colors.red,
  ];

  ThemeData theme(BuildContext context, [int selectedColor = 0]) {
    assert(selectedColor >= 0 && selectedColor < colorsList.length,
        'Selected color not allowed');

    return ThemeData(
        // textTheme: TextTheme(),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
        brightness: Brightness.light,
        // fontFamily: 'mono',
        colorSchemeSeed: colorsList[selectedColor]);
  }
}

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

  ThemeData theme(BuildContext context, [int selecteColor = 0]) {
    assert(selecteColor >= 0 && selecteColor < colorsList.length,
        'Selected color not allowed');

    return ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
        colorSchemeSeed: colorsList[selecteColor]);
  }
}

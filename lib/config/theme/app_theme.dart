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
        // textTheme: TextTheme(),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
        brightness: Brightness.light,
        // fontFamily: 'mono',
        colorSchemeSeed: colorsList[selecteColor]);
  }
}

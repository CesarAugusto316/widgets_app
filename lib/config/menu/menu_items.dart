import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/buttons_screeen.dart';
import 'package:widgets_app/presentation/screens/cards_screen.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData iconData;

  MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.iconData});
}

List<MenuItem> menuItems = [
  MenuItem(
      title: 'Botones',
      subTitle: 'varios botones',
      link: ButtonsScreen.pathName,
      iconData: Icons.access_time_sharp),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Judas Priest turbo lover',
      link: CardsScreen.pathName,
      iconData: Icons.music_off_sharp),
];

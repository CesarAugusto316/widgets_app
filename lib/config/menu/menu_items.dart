import 'package:flutter/material.dart';

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
      link: '/buttons',
      iconData: Icons.access_time_sharp),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Judas Priest turbo lover',
      link: '/cards',
      iconData: Icons.music_off_sharp),
];

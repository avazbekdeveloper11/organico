import 'package:flutter/material.dart';

Widget iconButton(
    {icon = const Icon(Icons.add),
    ontap,
    double radius = 15,
    iconColor}) {
  return IconButton(
      icon: icon, onPressed: ontap, splashRadius: radius, color: iconColor);
}

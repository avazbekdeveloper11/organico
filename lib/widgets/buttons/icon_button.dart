import 'package:flutter/material.dart';
import 'package:organico/constant/color/color.dart';

Widget iconButton({icon = Icons.ice_skating, ontap, double radius = 10}) {
  return IconButton(
      icon: icon, onPressed: ontap, splashRadius: radius, color: iconColor);
}

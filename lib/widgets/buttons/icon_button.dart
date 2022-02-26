import 'package:flutter/material.dart';
import 'package:organico/constant/color/color.dart';

Widget iconButton({icon = Icons.ice_skating, ontap, double radius = 15,iconColor}) {
  return IconButton(
      icon: icon, onPressed: ontap, splashRadius: radius, color: iconColor);
}

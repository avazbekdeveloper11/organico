import 'package:flutter/material.dart';
import '../../constant/color/color.dart';
import '../../constant/sizeConfig/sizeConfig.dart';

InkWell textBoldButton(
        {required String text,
        double size = 18,
        fontw = FontWeight.w600,
        color,
        ontap}) =>
    InkWell(
      child: Text(
        text,
        style: TextStyle(
          fontSize: getW(size),
          fontWeight: FontWeight.w600,
          color: color ?? textsColor,
        ),
      ),
      onTap: ontap,
    );

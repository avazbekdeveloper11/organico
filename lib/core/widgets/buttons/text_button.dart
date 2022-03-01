import 'package:flutter/material.dart';
import '../../constant/color/color.dart';
import '../../constant/sizeConfig/sizeConfig.dart';

InkWell textBoldButton(
        {required String text,
        double size = 18,
        fontw = FontWeight.w600,
        color = const Color(0xFF2ECC71),
        ontap,txtcolor}) =>
    InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getW(size),
          fontWeight: FontWeight.w600,
          color: color ?? txtcolor,
        ),
      ),
      onTap: ontap,
    );

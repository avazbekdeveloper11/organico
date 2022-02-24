import 'package:flutter/material.dart';
import 'package:organico/constant/color/color.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';


Text textBold(
        {required String text,
        double size = 18,
        fontw = FontWeight.w600,
        color}) =>
    Text(text,
        style: TextStyle(
          fontSize: getW(size),
          fontWeight: FontWeight.w600,
          color: color ?? textsColor,
        ));

Padding textBoldPadding({
  required String text,
  FontWeight fontw = FontWeight.w600,
  double size = 18,
  double top = 0,
  double bottom = 0,
  double left = 0,
  double right = 0,
}) {
  return Padding(
    padding: EdgeInsets.only(
        top: getH(top),
        bottom: getH(bottom),
        left: getW(left),
        right: getW(right)),
    child: Text(
      text,
      style: TextStyle(fontSize: getW(size), fontWeight: fontw),
    ),
  );
}
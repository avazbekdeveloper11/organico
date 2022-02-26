import 'package:flutter/material.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import '../../constant/sizeConfig/sizeConfig.dart';
import '../borderRadius/border_radius.dart';

Widget passwordForm(
    {bool isShow = true,
    showtap,
    locktap,
    color,
    txt,
    suffix,
    perfix,
    enable = true,
    brdColor = const Color(0xFF92929D)}) {
  return Container(
    width: getW(374),
    height: getH(48),
    decoration: BoxDecoration(
      color: color,
      borderRadius: radius(100),
      border: Border.all(color: brdColor),
    ),
    child: myPaddingonly(
      left: perfix == null ? 15 : 0,
      child: TextFormField(
        enabled: enable,
        obscureText: isShow,
        decoration: InputDecoration(
            hintText: txt,
            border: InputBorder.none,
            prefixIcon: perfix,
            suffixIcon: suffix),
      ),
    ),
  );
}

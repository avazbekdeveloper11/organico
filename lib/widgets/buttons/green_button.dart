import 'package:flutter/material.dart';
import 'package:organico/constant/color/color.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/widgets/borderRadius/border_radius.dart';
import 'package:organico/widgets/texts/texts.dart';

InkWell greenButton(
    {text = "",
    ontap,
    colorCont = const Color(0xFF2ECC71),
    borderColor = Colors.transparent,
    color}) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: Container(
      height: getH(52),
      width: getW(374),
      child: Center(child: textBold(text: text, color: color)),
      decoration: BoxDecoration(
          color: colorCont,
          borderRadius: radius(100),
          border: Border.all(color: borderColor)),
    ),
    onTap: ontap,
  );
}

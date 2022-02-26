import 'package:flutter/material.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/widgets/borderRadius/border_radius.dart';
import 'package:organico/widgets/texts/texts.dart';

InkWell greenButton({
  text = "",
  ontap,
  colorCont = const Color(0xFF2ECC71),
  borderColor = Colors.transparent,
  color,
  double height = 52,
  double width = 374,
  double rad = 100,
}) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: Container(
      height: getH(height),
      width: getW(width),
      child: Center(
          child: text.runtimeType == String
              ? textBold(text: text, color: color)
              : text),
      decoration: BoxDecoration(
          color: colorCont,
          borderRadius: radius(rad),
          border: Border.all(color: borderColor)),
    ),
    onTap: ontap,
  );
}

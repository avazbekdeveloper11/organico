import 'package:flutter/material.dart';
import 'package:organico/constant/color/color.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/widgets/borderRadius/border_radius.dart';
import 'package:organico/widgets/texts/texts.dart';

InkWell greenButton({text = "", ontap}) {
  return InkWell(
    child: Container(
      height: getH(52),
      width: getW(374),
      child: Center(child: textBold(text: text, color: buttontextColor)),
      decoration: BoxDecoration(
        color: const Color(0xFF2ECC71),
        borderRadius: radius(100),
      ),
    ),
    onTap: ontap,
  );
}

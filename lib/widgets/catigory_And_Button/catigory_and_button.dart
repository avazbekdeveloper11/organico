import 'package:flutter/material.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/widgets/texts/texts.dart';

Row catigoryAndButton({required String text, required Color color, ontap}) {
  return Row(
    children: [
      SizedBox(
        child: textBold(
            text: text, size: 18, fontw: FontWeight.w700, color: color),
        width: getW(280),
      ),
      const Spacer(),
      InkWell(
        child: textBold(
          text: "See all",
          color: const Color(0xFF696974),
          fontw: FontWeight.w400,
        ),
        onTap: ontap,
      ),
    ],
  );
}

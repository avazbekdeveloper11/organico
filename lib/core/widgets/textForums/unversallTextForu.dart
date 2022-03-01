import 'package:flutter/material.dart';
import '../../constant/sizeConfig/sizeConfig.dart';
import '../borderRadius/border_radius.dart';
import '../paddings/paddings.dart';

unversallTextForm(
    {borderColor = const Color(0xFF92929D), hintText = "Full Name"}) {
  return Container(
    height: getH(52),
    width: getW(374),
    child: myPaddingsymetric(horizontal: 20,vartical: 4, child: textforum(hintText)),
    decoration: BoxDecoration(
      borderRadius: radius(100),
      border: Border.all(color: borderColor),
    ),
  );
}

TextFormField textforum(String hint) {
  return TextFormField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: hint,
      hintStyle: TextStyle(
          color: const Color(0xFF92929D),
          fontWeight: FontWeight.w500,
          fontSize: getW(18)),
    ),
  );
}

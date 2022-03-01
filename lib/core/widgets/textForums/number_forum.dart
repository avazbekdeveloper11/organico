import 'package:flutter/material.dart';

import '../../constant/sizeConfig/sizeConfig.dart';
import '../borderRadius/border_radius.dart';
import '../paddings/paddings.dart';
import '../sizedboxes/sizedBox.dart';
import '../texts/texts.dart';

Widget numberForm({String? hinttxt}) {
  return Container(
    width: getW(374),
    height: getH(48),
    decoration: BoxDecoration(
      borderRadius: radius(100),
      border: Border.all(color: const Color(0xFF92929D)),
    ),
    child: myPaddingsymetric(
      horizontal: 15,
      child: Row(
        children: [
          textBold(text: "+998 "),
          const RotatedBox(quarterTurns: 1, child: Divider()),
          MySizeBox(
            width: 250,
            height: 50,
            child: myPaddingonly(
              top: 22,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: hinttxt),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

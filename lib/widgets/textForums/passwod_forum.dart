import 'package:flutter/material.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import '../../constant/sizeConfig/sizeConfig.dart';
import '../borderRadius/border_radius.dart';
import '../buttons/icon_button.dart';

Widget passwordForm() {
  return Container(
    width: getW(374),
    height: getH(48),
    decoration: BoxDecoration(
      borderRadius: radius(100),
      border: Border.all(color: const Color(0xFF92929D)),
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: iconButton(
            icon: const Icon(Icons.lock_outline_rounded),
            ontap: () {
              print("perfix");
            }),
        suffixIcon: iconButton(
            icon: const Icon(Icons.remove_red_eye_outlined),
            ontap: () {
              print("suffix");
            }),
      ),
    ),
  );
}

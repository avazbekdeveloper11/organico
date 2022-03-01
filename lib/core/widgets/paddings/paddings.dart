import 'package:flutter/material.dart';
import '../../constant/sizeConfig/sizeConfig.dart';

Padding myPaddingonly({
  double top = 0,
  double bottom = 0,
  double right = 0,
  double left = 0,
  Widget? child,
}) =>
    Padding(
      padding: EdgeInsets.only(
        top: getH(top),
        bottom: getH(bottom),
        left: getW(left),
        right: getW(right),
      ),
      child: child,
    );
Padding myPaddingsymetric(
        {double horizontal = 0, double vartical = 0, Widget? child}) =>
    Padding(
      padding: EdgeInsets.symmetric(
        vertical: getH(vartical),
        horizontal: getW(horizontal),
      ),
      child: child,
    );

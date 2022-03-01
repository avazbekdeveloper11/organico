import 'package:flutter/material.dart';

import '../../constant/sizeConfig/sizeConfig.dart';

SizedBox MySizeBox({double width = 0, double height = 0, Widget? child}) {
  return SizedBox(width: getW(width), height: getH(height), child: child);
}

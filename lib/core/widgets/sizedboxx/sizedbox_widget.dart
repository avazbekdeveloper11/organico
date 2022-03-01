import 'package:flutter/material.dart';

import '../../constant/sizeConfig/sizeConfig.dart';

SizedBox sizedbox(__) {
  return SizedBox(width: getW(__ == 5 ? 20 : 7.5));
}

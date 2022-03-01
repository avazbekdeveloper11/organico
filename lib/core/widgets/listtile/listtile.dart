
  import 'package:flutter/cupertino.dart';

import '../../constant/sizeConfig/sizeConfig.dart';
import '../Image_widgets/assets_image.dart';
import '../paddings/paddings.dart';
import '../texts/texts.dart';

Row listTile({String? image, String? title, String? subtitle}) {
    return Row(
      children: [
        SizedBox(
          width: getW(48),
          height: getH(48),
          child: imageFunk(img: image.toString()),
        ),
        myPaddingsymetric(
          horizontal: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textBold(
                text: title.toString(),
              ),
              textBold(
                text: subtitle.toString(),
                fontw: FontWeight.w400,
                size: 14,
              ),
            ],
          ),
        )
      ],
    );
  }


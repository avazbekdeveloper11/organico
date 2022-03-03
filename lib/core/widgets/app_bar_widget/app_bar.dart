import 'package:flutter/material.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:provider/provider.dart';

import '../../../provider/mode_provider.dart';
import '../texts/texts.dart';

PreferredSizeWidget appbarWidgetim(BuildContext context,
    {arrow = false, leading, text, bottom = null}) {
  return AppBar(
    automaticallyImplyLeading: arrow,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: iconButton(
      icon: Icon(
        Icons.arrow_back_ios_new,
        size: getW(20),
        color: context.watch<ModeProvider>().blackWhite,
      ),
      ontap: () => Navigator.pop(context),
    ),
    title: textBold(
      text: text.toString(),
      color: context.watch<ModeProvider>().blackWhite,
    ),
    bottom: bottom,
  );
}

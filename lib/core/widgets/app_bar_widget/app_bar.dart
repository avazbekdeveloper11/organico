import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/mode_provider.dart';
import '../texts/texts.dart';

PreferredSizeWidget appbarWidgetim(BuildContext context,
    {arrow = false, leading, text}) {
  return AppBar(
    automaticallyImplyLeading: arrow,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: leading,
    title: textBold(
      text: text.toString(),
      color: context.watch<ModeProvider>().blackWhite,
    ),
  );
}

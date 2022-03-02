import 'package:flutter/material.dart';
import 'package:organico/core/widgets/Image_widgets/assets_image.dart';
import 'package:provider/provider.dart';
import '../../../provider/mode_provider.dart';
import '../../constant/sizeConfig/sizeConfig.dart';

Center circileAvatar(BuildContext context,
    {String image = 'assets/images/banana.png', addFoto = false}) {
  return Center(
    child: InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: getW(171),
        height: getH(171),
        alignment: const Alignment(1, 1),
        child: addFoto
            ? CircleAvatar(
                child: Icon(Icons.add_a_photo_outlined,
                    color: context.watch<ModeProvider>().whiteBlack),
                backgroundColor: context.watch<ModeProvider>().green)
            : null,
        decoration: BoxDecoration(
          image: DecorationImage(image: assetImageProvider(img: image)),
          color: Colors.grey.shade400,
          shape: BoxShape.circle,
        ),
      ),
      onTap: () {
        print("Rasim qo'shish bosildi !");
      },
    ),
  );
}

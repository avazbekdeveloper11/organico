import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/mode_provider.dart';
import '../../constant/color/color.dart';
import '../../constant/sizeConfig/sizeConfig.dart';
import '../Image_widgets/assets_image.dart';
import '../borderRadius/border_radius.dart';
import '../buttons/green_button.dart';
import '../sizedboxx/sizedbox_widget.dart';
import '../texts/texts.dart';

SizedBox bigCardBestSelling(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: getH(265),
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, __) {
        return Row(
          children: [
            sizedbox(__),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/detail'),
              child: Stack(
                children: [
                  Container(
                    width: getW(196),
                    height: getH(242),
                    decoration: BoxDecoration(
                      color: cartColor,
                      borderRadius: radius(20),
                    ),
                  ),
                  Positioned(
                    left: getW(22),
                    top: getH(20),
                    child: SizedBox(
                      height: getH(79),
                      child: imageFunk(img: "assets/images/banana.png"),
                    ),
                  ),
                  Positioned(
                    left: getW(20),
                    top: getH(119),
                    child: SizedBox(
                      width: getW(90),
                      child: Center(
                        child: textBold(
                          text: "Vegetables",
                          color: context.watch<ModeProvider>().blackWhite,
                          size: 16,
                          fontw: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: getW(25),
                    top: getH(147),
                    child: SizedBox(
                      width: getW(90),
                      child: textBold(
                        text: "Vegetables",
                        color: context.watch<ModeProvider>().grey,
                        size: 14,
                        fontw: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: getW(20),
                    top: getH(186),
                    child: SizedBox(
                      width: getW(90),
                      child: Center(
                        child: textBold(
                          text: "Vegetables",
                          color: context.watch<ModeProvider>().blackWhite,
                          size: 16,
                          fontw: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: getW(140),
                    top: getH(186),
                    child: greenButton(
                      ontap: () {
                        print("Bosildi");
                      },
                      text: Icon(Icons.add,
                          color: context.watch<ModeProvider>().whiteBlack),
                      width: 36,
                      height: 36,
                      rad: 10,
                    ),
                  ),
                ],
              ),
            ),
            sizedbox(__),
          ],
        );
      },
      itemCount: 5,
    ),
  );
}

SizedBox cardCatigory(context) {
  return SizedBox(
    width: double.infinity,
    height: getH(140),
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, __) {
        return InkWell(
          onTap: () => Navigator.pushNamed(context, '/detail'),
          child: Row(
            children: [
              sizedbox(__),
              Stack(
                children: [
                  Container(
                    width: getW(123),
                    height: getH(134),
                    decoration: BoxDecoration(
                      color: cartColor,
                      borderRadius: radius(20),
                    ),
                  ),
                  Positioned(
                    left: getW(25),
                    top: getH(20),
                    child: SizedBox(
                      width: getW(72),
                      height: getH(59),
                      child: imageFunk(img: "assets/images/banana.png"),
                    ),
                  ),
                  Positioned(
                    left: getW(20),
                    top: getH(93),
                    child: SizedBox(
                      width: getW(90),
                      child: Center(
                        child: textBold(
                            text: "Vegetables",
                            size: 15,
                            fontw: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              sizedbox(__),
            ],
          ),
        );
      },
      itemCount: 5,
    ),
  );
}

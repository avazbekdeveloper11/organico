import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/core/constant/color/color.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/Image_widgets/assets_image.dart';
import 'package:organico/core/widgets/borderRadius/border_radius.dart';
import 'package:organico/core/widgets/buttons/green_button.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:provider/provider.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: textBold(
          text: "Explore",
          size: 18,
          fontw: FontWeight.w800,
          color: context.watch<ModeProvider>().blackWhite,
        ),
        actions: [
          iconButton(
            icon: SvgPicture.asset(
              "assets/icon/sort.svg",
              color: context.watch<ModeProvider>().blackWhite,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: 10, left: 6),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: getH(250),
        ),
        itemBuilder: (_, __) {
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
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
          );
        },
        itemCount: 8,
      ),
    );
  }
}

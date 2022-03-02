import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/provider/count_product_provider/count_provider.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import '../../core/constant/sizeConfig/sizeConfig.dart';
import '../../core/widgets/Image_widgets/assets_image.dart';
import '../../core/widgets/buttons/green_button.dart';
import '../../core/widgets/buttons/icon_button.dart';
import '../../core/widgets/listtile/listtile.dart';
import '../../core/widgets/paddings/paddings.dart';
import '../../core/widgets/texts/texts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: getW(414),
              height: getH(436),
              child: SizedBox(
                width: getW(239),
                height: getH(194),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconButton(
                          icon: const Icon(Icons.arrow_back_ios_new_outlined),
                          ontap: () {
                            Navigator.pop(context);
                          },
                        ),
                        iconButton(
                          icon: const Icon(Icons.favorite_border),
                          ontap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      width: getW(239),
                      height: getH(194),
                      child: imageFunk(img: "assets/images/banana.png"),
                    ),
                    myPaddingonly(
                      top: 24,
                      right: 185,
                      child: SizedBox(
                        width: getW(200),
                        child: textBold(
                          text: "Paprika",
                          size: 24,
                          color: context.watch<ModeProvider>().blackWhite,
                        ),
                      ),
                    ),
                    myPaddingonly(
                      left: 15,
                      right: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: getW(250),
                            child: textBold(
                              text: "Vegshop",
                              size: 18,
                              color: context.watch<ModeProvider>().grey,
                            ),
                          ),
                          greenButton(
                            ontap: () => context.read<CountProvider>().remove(),
                            text: Icon(Icons.remove,
                                color:
                                    context.watch<ModeProvider>().whiteBlack),
                            width: 40,
                            height: 40,
                            rad: 10,
                          ),
                          SizedBox(
                            width: getW(30),
                            child: Center(
                              child: textBold(
                                text: context
                                    .watch<CountProvider>()
                                    .noun
                                    .toString(),
                                size: 24,
                                color: context.watch<ModeProvider>().blackWhite,
                              ),
                            ),
                          ),
                          greenButton(
                            ontap: () => context.read<CountProvider>().add(),
                            text: Icon(Icons.add,
                                color:
                                    context.watch<ModeProvider>().whiteBlack),
                            width: 40,
                            height: 40,
                            rad: 10,
                          ),
                        ],
                      ),
                    ),
                    myPaddingonly(
                      top: 16,
                      right: 185,
                      child: SizedBox(
                        width: getW(200),
                        child: textBold(
                          text:
                              "\$${(4.99 * context.watch<CountProvider>().noun).toStringAsFixed(2)}/Kg",
                          size: 24,
                          color: context.watch<ModeProvider>().blackWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: myPaddingsymetric(
                horizontal: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: textBold(
                        text: "Details",
                        fontw: FontWeight.w700,
                        size: 18,
                      ),
                    ),
                    myPaddingsymetric(
                      vartical: 16,
                      child: ReadMoreText(
                        'Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fru..',
                        style: TextStyle(
                          color: context.watch<ModeProvider>().grey,
                        ),
                        lessStyle: const TextStyle(color: Colors.red),
                        colorClickableText: Colors.red,
                        trimCollapsedText: "more",
                        trimLength: 130,
                      ),
                    ),
                    myPaddingonly(
                      top: 50,
                      child: listTile(
                        image: "assets/icon/Icon.png",
                        title: "Time Delivery",
                        subtitle: "25-30",
                      ),
                    ),
                    myPaddingonly(
                      top: 24,
                      child: listTile(
                        image: "assets/icon/category.png",
                        title: "Time Delivery",
                        subtitle: "25-30",
                      ),
                    ),
                    myPaddingonly(
                      top: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          greenButton(
                              width: 298,
                              text: "Add to cart",
                              color: context.watch<ModeProvider>().whiteBlack),
                          CircleAvatar(
                            backgroundColor:
                                context.watch<ModeProvider>().forumColor,
                            radius: getH(30),
                            child: SvgPicture.asset(
                              "assets/icon/message.svg",
                              color: context.watch<ModeProvider>().whiteBlack,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

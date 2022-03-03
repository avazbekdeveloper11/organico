import 'package:flutter/material.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/Image_widgets/assets_image.dart';
import 'package:organico/core/widgets/borderRadius/border_radius.dart';
import 'package:organico/core/widgets/buttons/green_button.dart';
import 'package:organico/core/widgets/paddings/paddings.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/provider/count_product_provider/count_provider.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: textBold(
          text: "My Card",
          size: 18,
          color: context.watch<ModeProvider>().blackWhite,
        ),
      ),
      body: Column(
        children: [
          myPaddingsymetric(
            horizontal: 20,
            vartical: 20,
            child: Container(
              height: getH(580),
              width: getW(374),
              decoration: BoxDecoration(
                borderRadius: radius(12),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, __) {
                  return ListTile(
                    leading: SizedBox(
                      width: getW(64),
                      height: getH(51),
                      child: imageFunk(
                        img: "assets/images/banana.png",
                      ),
                    ),
                    title: SizedBox(
                      width: getW(85),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textBold(
                            size: 16,
                            text: "Broccoli",
                            color: context.watch<ModeProvider>().blackWhite,
                          ),
                          textBold(
                            size: 14,
                            fontw: FontWeight.w400,
                            text:
                                "${context.watch<CountProvider>().noun} Kilogram ",
                            color: context.watch<ModeProvider>().grey,
                          ),
                          textBold(
                            size: 16,
                            text: "\$4.99",
                            color: context.watch<ModeProvider>().blackWhite,
                          ),
                        ],
                      ),
                    ),
                    trailing: SizedBox(
                      width: getW(119),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                  );
                },itemCount: 5,
              ),
            ),
          ),
          myPaddingsymetric(
            horizontal: 20,
            vartical: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textBold(
                      size: 16,
                      text: "Total",
                      color: context.watch<ModeProvider>().grey,
                    ),
                    textBold(
                      size: 24,
                      text: "\$9.98",
                      color: context.watch<ModeProvider>().blackWhite,
                    ),
                  ],
                ),
                greenButton(
                  width: 266,
                  text: "Add to bag",
                  color: context.watch<ModeProvider>().whiteBlack,
                  ontap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

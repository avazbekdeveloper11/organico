import 'package:flutter/material.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/widgets/Image_widgets/assets_image.dart';
import 'package:organico/widgets/buttons/icon_button.dart';
import 'package:organico/widgets/catigory_And_Button/catigory_and_button.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import 'package:organico/widgets/textForums/passwod_forum.dart';
import 'package:organico/widgets/texts/texts.dart';
import 'package:provider/provider.dart';
import '../../widgets/cards/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            textBold(
              text: "Your location",
              color: const Color(0xFF696974),
              size: 16,
            ),
            textBold(
              text: "Adress",
              size: 20,
              color: context.watch<ModeProvider>().whiteBlack,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.pushNamed(context, "/search");
                },
                child: myPaddingsymetric(
                  horizontal: 20,
                  vartical: 20,
                  child: passwordForm(
                    perfix: const Icon(Icons.search),
                    brdColor: Colors.transparent,
                    color: context.watch<ModeProvider>().forumColor,
                    enable: false,
                    txt: "Search anything here",
                  ),
                ),
              ),
              myPaddingsymetric(
                vartical: 17,
                child: ListTile(
                  leading: SizedBox(
                    height: getW(45),
                    width: getW(45),
                    child: imageFunk(img: "assets/logo/cupon.png"),
                  ),
                  title: textBold(
                    text: "You have 3 coupon",
                    color: context.watch<ModeProvider>().blackWhite,
                    fontw: FontWeight.bold,
                  ),
                  subtitle: textBold(text: "Let’s use this coupon"),
                  trailing: iconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: getW(20),
                    ),
                  ),
                ),
              ),
              myPaddingsymetric(
                horizontal: 20,
                vartical: 16,
                child: catigoryAndButton(
                  text: "Choose Category",
                  color: context.watch<ModeProvider>().blackWhite,
                ),
              ),
              cardCatigory(),
              myPaddingonly(
                left: 20,
                right: 20,
                bottom: 8,
                top: 44,
                child: catigoryAndButton(
                  text: "Best Selling",
                  color: context.watch<ModeProvider>().blackWhite,
                ),
              ),
              bigCardBestSelling(context),
              
            ],
          ),
        ),
      ),
    );
  }
}

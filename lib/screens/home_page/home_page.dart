import 'package:flutter/material.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/Image_widgets/assets_image.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:organico/core/widgets/cards/cards.dart';
import 'package:organico/core/widgets/catigory_And_Button/catigory_and_button.dart';
import 'package:organico/core/widgets/paddings/paddings.dart';
import 'package:organico/core/widgets/sizedboxx/sizedbox_widget.dart';
import 'package:organico/core/widgets/textForums/passwod_forum.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/model/data.dart';
import 'package:organico/provider/dropdownProvider/dropdownProvider.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
            DropdownButton(
              isDense: true,
              menuMaxHeight: getW(230),
              underline: sizedbox(""),
              value: context.watch<DropdownProvider>().valuee,
              items: List<DropdownMenuItem<String>>.generate(
                12,
                (index) => DropdownMenuItem(
                  value: regionNames[index],
                  child: Center(child: Text(regionNames[index])),
                ),
              ),
              onChanged: (v) =>
                  context.read<DropdownProvider>().changeRegion(v),
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
              cardCatigory(context),
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

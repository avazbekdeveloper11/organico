import 'package:flutter/material.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/Image_widgets/assets_image.dart';
import 'package:organico/core/widgets/buttons/green_button.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:organico/core/widgets/paddings/paddings.dart';
import 'package:organico/core/widgets/textForums/number_forum.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:provider/provider.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              iconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: context.watch<ModeProvider>().grey,
                  size: getW(20),
                ),
                radius: 18,
                ontap: () {
                  Navigator.pop(context);
                },
                iconColor: context.watch<ModeProvider>().grey,
              ),
              textBold(text: "Forgot Password"),
            ],
          ),
          SizedBox(
            height: getH(345),
            child: imageFunk(img: "assets/images/Forgot Illustration.png"),
          ),
          myPaddingonly(
            top: 70,
            left: 20,
            child: textBold(text: "Enter your phone number", size: 20),
          ),
          myPaddingsymetric(
            horizontal: 20,
            vartical: 16,
            child: textBold(
              text:
                  "We need to verify you. We will send you a one-time authorization code.",
              fontw: FontWeight.w400,
              color: const Color(0xFF92929D),
            ),
          ),
          myPaddingsymetric(
            vartical: 16,
            horizontal: 20,
            child: numberForm(hinttxt: "Your Phone Number"),
          ),
          myPaddingonly(
            left: 20,
            right: 20,
            top: 79,
            child: greenButton(
                text: "Next", color: context.watch<ModeProvider>().whiteBlack,
                ontap: (){Navigator.pushNamed(context, "/smscode");}),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/widgets/Image_widgets/assets_image.dart';
import 'package:organico/widgets/buttons/green_button.dart';
import 'package:organico/widgets/textForums/number_forum.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import 'package:organico/widgets/textForums/passwod_forum.dart';
import 'package:organico/widgets/texts/texts.dart';
import '../../widgets/buttons/text_button.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myPaddingonly(
                top: 46,
                left: 32,
                child: SizedBox(
                  height: getH(318),
                  width: getW(349),
                  child: assetImageFunk(img: "assets/images/WelcomeImage.png"),
                ),
              ),
              textBoldPadding(
                text: "Welcome",
                left: 20,
                top: 65,
                size: 20,
                fontw: FontWeight.w700,
              ),
              myPaddingsymetric(
                horizontal: 20,
                vartical: 16,
                child: textBold(
                  color: const Color(0xFF92929D),
                  size: 17,
                  text:
                      "Welcome to Organico Mobile Apps. Please fill in the field below to sign in.",
                  fontw: FontWeight.w400,
                ),
              ),
              myPaddingsymetric(
                vartical: 16,
                horizontal: 20,
                child: numberForm(),
              ),
              myPaddingsymetric(
                horizontal: 20,
                vartical: 4,
                child: passwordForm(),
              ),
              myPaddingonly(
                left: 266,
                top: 20,
                child: textBoldButton(
                  text: "Forgot Password",
                  size: 16,
                  fontw: FontWeight.w700,
                  color: const Color(0xFF2ECC71),
                  ontap: () {},
                ),
              ),
              myPaddingonly(
                top: 50,
                left: 20,
                child: greenButton(text: "Sign In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

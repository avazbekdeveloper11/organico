import 'package:flutter/material.dart';
import 'package:organico/constant/color/color.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/provider/show_password_provider.dart';
import 'package:organico/widgets/Image_widgets/assets_image.dart';
import 'package:organico/widgets/buttons/green_button.dart';
import 'package:organico/widgets/textForums/number_forum.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import 'package:organico/widgets/textForums/passwod_forum.dart';
import 'package:organico/widgets/texts/texts.dart';
import '../../widgets/buttons/icon_button.dart';
import '../../widgets/buttons/text_button.dart';
import 'package:provider/provider.dart';

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
                  child: imageFunk(img: "assets/images/WelcomeImage.png"),
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
                child: passwordForm(
                  isShow: context.watch<ShowPasswordProvider>().isShow,
                  perfix: iconButton(
                    iconColor: context.watch<ModeProvider>().grey,
                    icon: const Icon(Icons.lock_outline),
                    ontap: () {
                      mode = !mode;
                      context.read<ModeProvider>().setstate();
                    },
                  ),
                  suffix: iconButton(
                    iconColor: context.watch<ModeProvider>().grey,
                    icon: Icon(context.watch<ShowPasswordProvider>().isShow
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off_outlined),
                    ontap: () {
                      context.read<ShowPasswordProvider>().showMe();
                    },
                  ),
                ),
              ),
              myPaddingonly(
                left: 266,
                top: 20,
                child: textBoldButton(
                    text: "Forgot Password",
                    size: 16,
                    fontw: FontWeight.w700,
                    color: const Color(0xFF2ECC71),
                    ontap: () {
                      Navigator.pushNamed(context, '/forget');
                    },
                    txtcolor: context.watch<ModeProvider>().green),
              ),
              myPaddingonly(
                top: 30,
                left: 20,
                child: greenButton(
                  color: context.watch<ModeProvider>().whiteBlack,
                  text: "Sign In",
                  ontap: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                ),
              ),
              myPaddingonly(
                top: 10,
                left: 20,
                child: greenButton(
                  color: context.watch<ModeProvider>().whiteBlack,
                  text: "Sign Up",
                  ontap: () {
                    Navigator.pushNamed(context, '/signUp');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

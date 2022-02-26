import 'package:flutter/material.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/provider/buttonproviders/checkbox_provider.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/widgets/buttons/green_button.dart';
import 'package:organico/widgets/buttons/icon_button.dart';
import 'package:organico/widgets/buttons/text_button.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import 'package:organico/widgets/textForums/unversallTextForu.dart';
import 'package:organico/widgets/texts/texts.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  textBold(text: "New Registration"),
                ],
              ),
              myPaddingsymetric(
                vartical: 40,
                horizontal: 20,
                child: textBold(
                  size: 16,
                  color: const Color(0xFF92929D),
                  text:
                      "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
                ),
              ),
              myPaddingonly(
                left: 20,
                child: textBold(
                  text: "Full Name",
                  size: 16,
                  color: const Color(0xFF696974),
                ),
              ),
              myPaddingsymetric(
                vartical: 10,
                horizontal: 20,
                child: unversallTextForm(),
              ),
              myPaddingonly(
                left: 20,
                child: textBold(
                  text: "Password",
                  size: 16,
                  color: const Color(0xFF696974),
                ),
              ),
              myPaddingsymetric(
                vartical: 10,
                horizontal: 20,
                child: unversallTextForm(hintText: "Password"),
              ),
              myPaddingonly(
                left: 20,
                child: textBold(
                  text: "Password Confirmation",
                  size: 16,
                  color: const Color(0xFF696974),
                ),
              ),
              myPaddingsymetric(
                vartical: 10,
                horizontal: 20,
                child: unversallTextForm(hintText: "Password Confirmation"),
              ),
              myPaddingsymetric(
                horizontal: 8,
                vartical: 16,
                child: Row(
                  children: [
                    Checkbox(
                      value: context.watch<CheckBoxProvider>().ischeck,
                      onChanged: (v) {
                        context.read<CheckBoxProvider>().onPress();
                      },
                    ),
                    textBold(
                      text: "I accept the ",
                      size: 16,
                    ),
                    textBoldButton(
                        text: "Terms of Use",
                        size: 16,
                        txtcolor: context.watch<ModeProvider>().whiteBlack),
                    textBold(
                      text: " and ",
                      size: 16,
                    ),
                    textBoldButton(
                        text: "Privacy Policy",
                        size: 16,
                        txtcolor: context.watch<ModeProvider>().whiteBlack),
                  ],
                ),
              ),
              myPaddingonly(
                left: 20,
                top: 32,
                child: greenButton(
                  text: "Sign Up",
                  color: context.watch<ModeProvider>().whiteBlack,
                ),
              ),
              textBoldPadding(top: 24, left: 185, text: "Or Use", size: 16),
              myPaddingsymetric(
                horizontal: 20,
                vartical: 39,
                child: greenButton(
                  borderColor: const Color(0xFF92929D),
                  colorCont: Colors.transparent,
                  text: "Sign Up with Google",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

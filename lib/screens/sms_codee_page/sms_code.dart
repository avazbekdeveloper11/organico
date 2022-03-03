import 'package:flutter/material.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/buttons/green_button.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:organico/core/widgets/buttons/text_button.dart';
import 'package:organico/core/widgets/paddings/paddings.dart';
import 'package:organico/core/widgets/textForums/passwod_forum.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/provider/show_password_provider.dart';
import 'package:provider/provider.dart';

class SmsCode extends StatelessWidget {
  const SmsCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                textBold(text: "OTAC Number"),
              ],
            ),
            myPaddingonly(
              top: 48,
              bottom: 16,
              child: textBold(
                text: "Enter Authorization Code",
                size: 20,
              ),
            ),
            textBold(
              text: "We have sent SMS to:",
              size: 16,
              color: const Color(0xFF92929D),
            ),
            textBold(
              text: "+998992305103",
              size: 20,
            ),
            myPaddingonly(
              top: 40,
              child: passwordForm(
                txt: "6 Digit Code",
                suffix: iconButton(
                  iconColor: context.watch<ModeProvider>().grey,
                  icon: Icon(context.watch<ShowPasswordProvider>().isShowcode
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined),
                  ontap: () {
                    context.read<ShowPasswordProvider>().showMecode();
                  },
                ),
                isShow: context.watch<ShowPasswordProvider>().isShowcode,
              ),
            ),
            myPaddingonly(
              left: 285,
              top: 24,
              child: textBoldButton(
                text: "Resend code",
                size: 16,
              ),
            ),
            myPaddingonly(
              left: 20,
              right: 20,
              top: 40,
              child: greenButton(
                text: "Next",
                color: context.watch<ModeProvider>().whiteBlack,
                ontap: () {
                  Navigator.pushNamed(context, "/resetPassword");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

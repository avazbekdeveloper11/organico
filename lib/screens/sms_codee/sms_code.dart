import 'package:flutter/material.dart';
import 'package:organico/widgets/buttons/text_button.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import 'package:organico/widgets/textForums/passwod_forum.dart';
import 'package:provider/provider.dart';
import '../../constant/sizeConfig/sizeConfig.dart';
import '../../provider/mode_provider.dart';
import '../../provider/show_password_provider.dart';
import '../../widgets/buttons/green_button.dart';
import '../../widgets/buttons/icon_button.dart';
import '../../widgets/texts/texts.dart';

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
                    color: context.watch<ModeProvider>().iconColor,
                    size: getW(20),
                  ),
                  radius: 18,
                  ontap: () {
                    Navigator.pop(context);
                  },
                  iconColor: context.watch<ModeProvider>().iconColor,
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
              coll: const Color(0xFF92929D),
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
                  iconColor: context.watch<ModeProvider>().iconColor,
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
                color: context.watch<ModeProvider>().textsColor,
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

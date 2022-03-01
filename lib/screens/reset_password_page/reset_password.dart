import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/constant/sizeConfig/sizeConfig.dart';
import '../../core/widgets/buttons/green_button.dart';
import '../../core/widgets/buttons/icon_button.dart';
import '../../core/widgets/paddings/paddings.dart';
import '../../core/widgets/textForums/passwod_forum.dart';
import '../../core/widgets/texts/texts.dart';
import '../../provider/mode_provider.dart';
import '../../provider/show_password_provider.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
              textBold(text: "Reset Password"),
            ],
          ),
          myPaddingsymetric(
            vartical: 40,
            horizontal: 20,
            child: textBold(
              text:
                  "Please fill in the field below to reset your current password.",
              color: const Color(0xFF92929D),
              fontw: FontWeight.w400,
              size: 16,
            ),
          ),
          myPaddingonly(
            left: 20,
            child: textBold(
              text: "New Password",
              color: const Color(0xFF92929D),
            ),
          ),
          myPaddingsymetric(
            horizontal: 20,
            vartical: 10,
            child: passwordForm(
              txt: "New Password",
              suffix: iconButton(
                iconColor: context.watch<ModeProvider>().grey,
                icon: Icon(context.watch<ShowPasswordProvider>().showpass
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off_outlined),
                ontap: () {
                  context.read<ShowPasswordProvider>().showMepass();
                },
              ),
              isShow: context.watch<ShowPasswordProvider>().showpass,
            ),
          ),
          myPaddingonly(
            left: 20,
            child: textBold(
              text: "New Password Confirmation",
              color: const Color(0xFF92929D),
            ),
          ),
          myPaddingsymetric(
            horizontal: 20,
            vartical: 10,
            child: passwordForm(
              txt: "New Password Confirmation",
              suffix: iconButton(
                iconColor: context.watch<ModeProvider>().grey,
                icon: Icon(context.watch<ShowPasswordProvider>().showconf
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off_outlined),
                ontap: () {
                  context.read<ShowPasswordProvider>().showMeconf();
                },
              ),
              isShow: context.watch<ShowPasswordProvider>().showconf,
            ),
          ),
          myPaddingonly(
            left: 20,
            right: 20,
            top: 55,
            child: greenButton(
              text: "Reset password",
              color: context.watch<ModeProvider>().whiteBlack,
              ontap: () {
                Navigator.pushNamed(context, "/homePage");
              },
            ),
          ),
        ],
      )),
    );
  }
}

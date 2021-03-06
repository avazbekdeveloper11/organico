import 'package:flutter/material.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/app_bar_widget/app_bar.dart';
import 'package:organico/core/widgets/borderRadius/border_radius.dart';
import 'package:organico/core/widgets/buttons/green_button.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:organico/core/widgets/circularAvatar/circular_avatar.dart';
import 'package:organico/core/widgets/paddings/paddings.dart';
import 'package:organico/core/widgets/textForums/number_forum.dart';
import 'package:organico/core/widgets/textForums/unversallTextForu.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidgetim(
        context,
        text: "Edit Profile",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: myPaddingonly(
          left: 20,
          right: 20,
          top: 32,
          bottom: 45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              circileAvatar(context, addFoto: true),
              myPaddingonly(
                top: 32,
                bottom: 10,
                child: textBold(
                    text: "Name", color: context.watch<ModeProvider>().grey),
              ),
              unversallTextForm(),
              myPaddingonly(
                top: 8,
                bottom: 10,
                child: textBold(
                    text: "Phone", color: context.watch<ModeProvider>().grey),
              ),
              numberForm(hinttxt: "99 123 45 67"),
              myPaddingonly(
                top: 8,
                bottom: 10,
                child: textBold(
                    text: "Adress", color: context.watch<ModeProvider>().grey),
              ),
              Container(
                width: getW(374),
                height: getH(127),
                child: myPaddingsymetric(
                  horizontal: 10,
                  child: textforum("3517 W. Gray St. Utica Pennsylvania 57867"),
                ),
                decoration: BoxDecoration(
                  borderRadius: radius(16),
                  border: Border.all(color: context.watch<ModeProvider>().grey),
                ),
              ),
              myPaddingonly(
                top: 120,
                child: greenButton(
                  text: "Save",
                  ontap: () {
                    Navigator.pushNamed(context, '/smscode');
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

import 'package:flutter/material.dart';
import 'package:organico/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/screens/spllash_screen_page/component/navigator_after_page.dart';
import 'package:organico/widgets/Image_widgets/assets_image.dart';
import 'package:organico/widgets/paddings/paddings.dart';
import 'package:organico/widgets/sizedboxes/sizedBox.dart';
import 'package:organico/widgets/texts/texts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    NavigatorPage().navigator(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          myPaddingonly(
            top: 346,
            bottom: 24,
            child: MySizeBox(
              height: 143,
              width: double.infinity,
              child: imageFunk(img: 'assets/logo/Logo.png'),
            ),
          ),
          textBold(text: "Organico", size: 24)
        ],
      ),
    );
  }
}

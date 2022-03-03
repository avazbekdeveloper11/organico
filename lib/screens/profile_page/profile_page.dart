import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/core/constant/sizeConfig/sizeConfig.dart';
import 'package:organico/core/widgets/Image_widgets/assets_image.dart';
import 'package:organico/core/widgets/buttons/icon_button.dart';
import 'package:organico/core/widgets/circularAvatar/circular_avatar.dart';
import 'package:organico/core/widgets/paddings/paddings.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/screens/profile_page/components/components.dart';
import 'package:provider/provider.dart';
import '../../core/widgets/texts/texts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: textBold(
          text: "Profile",
          size: getW(20),
          color: context.watch<ModeProvider>().blackWhite,
        ),
        actions: [
          iconButton(
              icon: SvgPicture.asset('assets/icon/notification.svg'),
              ontap: () {
                Navigator.pushNamed(context, "/notificationSettings");
              })
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(child: circileAvatar(context)),
            myPaddingonly(
              top: 24,
              bottom: 8,
              child: textBold(
                text: "Jane Doe",
                color: context.watch<ModeProvider>().blackWhite,
              ),
            ),
            myPaddingonly(
              bottom: 32,
              child: textBold(
                text: "+99899 230 51 03",
                color: context.watch<ModeProvider>().grey,
              ),
            ),
            myPaddingonly(
              bottom: 20,
              child: SizedBox(
                width: double.infinity,
                height: getH(550),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, __) {
                    return ListTile(
                      onTap: () => Navigator.pushNamed(
                          context, profilePages[__]['path']),
                      leading: SizedBox(
                        height: getW(44),
                        width: getW(44),
                        child: imageFunk(img: "assets/logo/cupon.png"),
                      ),
                      title: textBold(
                          text: profilePages[__]['name'],
                          color: context.watch<ModeProvider>().blackWhite,
                          size: 16),
                      trailing: iconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: getW(15),
                        ),
                      ),
                    );
                  },
                  itemCount: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

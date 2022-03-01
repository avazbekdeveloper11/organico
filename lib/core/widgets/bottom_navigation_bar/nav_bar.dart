import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/model/data.dart';
import 'package:organico/provider/bottomnavigationbarProvider/bottomProvider.dart';
import 'package:provider/provider.dart';
import 'companents/companents.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesCall().pages[context.watch<BottomBarProvider>().selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: context.watch<BottomBarProvider>().selectedIndex,
        onTap: (v) => context.read<BottomBarProvider>().changeIndex(v),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: List<BottomNavigationBarItem>.generate(
          4,
          (__) => BottomNavigationBarItem(
            label: iconsBottomBar[__]["name"],
            icon: SvgPicture.asset(
              iconsBottomBar[__]["img"],
              color: __ == context.watch<BottomBarProvider>().selectedIndex
                  ? Colors.green
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}

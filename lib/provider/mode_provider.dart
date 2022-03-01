import 'package:flutter/material.dart';

class ModeProvider extends ChangeNotifier {
  bool mode = true;
  Color grey = const Color(0xFF92929D);
  Color green = const Color(0xFF2ECC71);
  Color whiteBlack = const Color(0xFFFFFFFF);
  Color blackWhite = const Color(0xFF171725);
  Color forumColor = const Color.fromARGB(255, 232, 232, 241);

  setstate() {
    //
    mode = !mode;
    whiteBlack = !mode ? const Color(0xFFFFFFFF) : const Color(0xFF171725);
    blackWhite = mode ? const Color(0xFF171725) : const Color(0xFFFFFFFF);
    forumColor = !mode
        ? const Color.fromARGB(255, 73, 74, 77)
        : const Color.fromARGB(192, 232, 232, 241);
    notifyListeners();
  }
}

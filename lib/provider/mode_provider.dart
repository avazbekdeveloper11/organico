import 'package:flutter/material.dart';

class ModeProvider extends ChangeNotifier {
  bool Mode = true;
  Color textsColor = const Color(0xFFFFFFFF);
  Color buttontextColor = const Color(0xFFFFFFFF);
  Color iconColor =const Color(0xFF92929D);
  Color buttonColornegative = const Color(0xFFFFFFFF);

  setstate() {
    textsColor = !Mode ? const Color(0xFFFFFFFF) : const Color(0xFF171725);
    buttontextColor = !Mode ? const Color(0xFFFFFFFF) : const Color(0xFF171725);
    iconColor = Mode ? const Color(0xFFFFFFFF) : const Color(0xFF92929D);
    buttonColornegative =
        Mode ? const Color(0xFFFFFFFF) : const Color(0xFF171725);
    Mode = !Mode;
    notifyListeners();
  }
}

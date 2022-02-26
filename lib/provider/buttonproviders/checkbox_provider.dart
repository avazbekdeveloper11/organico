import 'package:flutter/material.dart';

class CheckBoxProvider extends ChangeNotifier {
  bool ischeck = false;

  onPress() {
    ischeck = !ischeck;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class ShowPasswordProvider extends ChangeNotifier {
  bool isShow = true;
  bool isShowcode = true;
  bool showpass = true;
  bool showconf = true;

  showMe() {
    isShow = !isShow;
    notifyListeners();
  }

  showMepass() {
    showpass = !showpass;
    notifyListeners();
  }

  showMeconf() {
    showconf = !showconf;
    notifyListeners();
  }

  showMecode() {
    isShowcode = !isShowcode;
    notifyListeners();
  }
}

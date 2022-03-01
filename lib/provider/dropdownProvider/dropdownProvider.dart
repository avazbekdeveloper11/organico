import 'package:flutter/material.dart';

class DropdownProvider extends ChangeNotifier {
  String valuee = "Toshkent";

  changeRegion(v) {
    valuee = v;
    notifyListeners();
  }
}

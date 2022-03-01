import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int noun = 1;

  void add() {
   noun == 99 ? noun: noun++;
    notifyListeners();
  }

  void remove() {
    noun == 1 ? noun : noun--;
    notifyListeners();
  }
}

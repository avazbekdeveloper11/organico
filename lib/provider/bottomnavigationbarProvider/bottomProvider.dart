import 'package:organico/provider/buttonproviders/checkbox_provider.dart';

class BottomBarProvider extends CheckBoxProvider {
  int selectedIndex = 0;

  void changeIndex(int v) {
    selectedIndex = v;
    notifyListeners();
  }
}

import 'package:organico/screens/cart_page/cart_page.dart';
import 'package:organico/screens/explore/explore_page.dart';
import 'package:organico/screens/home_page/home_page.dart';
import 'package:organico/screens/profile_page/profile_page.dart';

List pages = [];

class PagesCall {
  int ishladi = 0;

  PagesCall() {
    if (ishladi == 0) {
      pages
          .addAll(const [HomePage(), ExplorePage(), CartPage(), ProfilePage()]);
      ishladi++;
    }
  }
}

import 'package:organico/screens/cart_page/cart_page.dart';
import 'package:organico/screens/explore/explore_page.dart';
import 'package:organico/screens/home_page/home_page.dart';
import 'package:organico/screens/profile_page/profile_page.dart';

class PagesCall {
  List pages = [];

  PagesCall() {
    pages.addAll(const [HomePage(), ExplorePage(), CartPage(), ProfilePage()]);
  }
}

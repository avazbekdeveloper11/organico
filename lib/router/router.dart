import 'package:flutter/material.dart';
import 'package:organico/screens/adress_page/adress_page.dart';
import 'package:organico/screens/cart_page/cart_page.dart';
import 'package:organico/screens/change_password_page/change_password_page.dart';
import 'package:organico/screens/customer_page/customer_page.dart';
import 'package:organico/screens/detail/detail_page.dart';
import 'package:organico/screens/edit_profile_page/edit_profie.dart';
import 'package:organico/screens/explore/explore_page.dart';
import 'package:organico/screens/forget_password_page/forget_page.dart';
import 'package:organico/screens/notification_settings_page/notification_settings_page.dart';
import 'package:organico/screens/order_page/order_page.dart';
import 'package:organico/screens/payment_page/payment_page.dart';
import 'package:organico/screens/profile_page/profile_page.dart';
import 'package:organico/screens/reset_password_page/reset_password.dart';
import 'package:organico/screens/search_page/search_page.dart';
import 'package:organico/screens/sign_in_page/sign_in.dart';
import 'package:organico/screens/sign_up_page/sign_up.dart';
import 'package:organico/screens/spllash_screen_page/splash_page.dart';
import 'package:organico/screens/wishlist_page/wishlist_page.dart';
import '../core/widgets/bottom_navigation_bar/nav_bar.dart';
import '../screens/sms_codee_page/sms_code.dart';

class RouterGenerator {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case '/signIn':
        return MaterialPageRoute(builder: (_) => const SingInPage());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case '/forget':
        return MaterialPageRoute(builder: (_) => const ForgetPage());
      case '/smscode':
        return MaterialPageRoute(builder: (_) => const SmsCode());
      case '/resetPassword':
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case '/homePage':
        return MaterialPageRoute(builder: (_) => const BottomNavbar());
      case '/search':
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case '/explore':
        return MaterialPageRoute(builder: (_) => const ExplorePage());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case '/detail':
        return MaterialPageRoute(builder: (_) => const DetailPage());
      case '/editProfile':
        return MaterialPageRoute(builder: (_) => const EditProfilePage());
      case '/myOrder':
        return MaterialPageRoute(builder: (_) => OrderPage());
      case '/wishlist':
        return MaterialPageRoute(builder: (_) => const WishListPage());
      case '/adress':
        return MaterialPageRoute(builder: (_) => const AdressPage());
      case '/payment':
        return MaterialPageRoute(builder: (_) => const PaymentPage());
      case '/customer':
        return MaterialPageRoute(builder: (_) => const CustomerPage());
      case '/changePassword':
        return MaterialPageRoute(builder: (_) => const ChangePasswordPage());
      case '/notificationSettings':
        return MaterialPageRoute(builder: (_) => const NotificationSettings());
    }
    return null;
  }
}

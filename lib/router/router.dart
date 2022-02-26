import 'package:flutter/material.dart';
import 'package:organico/screens/forget_password_page/forget_page.dart';
import 'package:organico/screens/home_page/home_page.dart';
import 'package:organico/screens/reset_password_page/reset_password.dart';
import 'package:organico/screens/sign_in_page/sign_in.dart';
import 'package:organico/screens/sign_up_page/sign_up.dart';
import 'package:organico/screens/sms_codee/sms_code.dart';
import 'package:organico/screens/spllash_screen_page/splash_page.dart';

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
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}

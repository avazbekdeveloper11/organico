import 'package:flutter/material.dart';
import 'package:organico/screens/sign_in_page/sign_in.dart';
import 'package:organico/screens/sign_up_page/sign_up.dart';
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
    }
  }
}

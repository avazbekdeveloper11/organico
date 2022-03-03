import 'package:flutter/material.dart';
import 'package:organico/core/widgets/bottom_navigation_bar/companents/companents.dart';


class NavigatorPage {
  navigator(context) {
    PagesCall();
    return Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, '/signIn'),
    );
  }
}

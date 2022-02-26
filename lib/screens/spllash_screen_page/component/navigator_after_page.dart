import 'package:flutter/material.dart';

class NavigatorPage {
  navigator(context) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, '/signIn'),
    );
  }
}

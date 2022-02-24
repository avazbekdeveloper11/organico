import 'package:flutter/material.dart';
import 'package:organico/router/router.dart';

import 'constant/color/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = RouterGenerator();
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mode ? ThemeData.dark():ThemeData.light() ,
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      onGenerateRoute: _router.generateRoute,
    );
  }
}

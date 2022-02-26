import 'package:flutter/material.dart';
import 'package:organico/provider/buttonproviders/checkbox_provider.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/provider/show_password_provider.dart';
import 'package:organico/router/router.dart';
import 'package:provider/provider.dart';

import 'constant/color/color.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShowPasswordProvider()),
        ChangeNotifierProvider(create: (_) => ModeProvider()),
        ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _router = RouterGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ModeProvider>().Mode
          ? ThemeData.light()
          : ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      onGenerateRoute: _router.generateRoute,
    );
  }
}

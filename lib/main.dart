import 'package:flutter/material.dart';
import 'package:organico/provider/bottomnavigationbarProvider/bottomProvider.dart';
import 'package:organico/provider/buttonproviders/checkbox_provider.dart';
import 'package:organico/provider/count_product_provider/count_provider.dart';
import 'package:organico/provider/dropdownProvider/dropdownProvider.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/provider/show_password_provider.dart';
import 'package:organico/router/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShowPasswordProvider()),
        ChangeNotifierProvider(create: (_) => ModeProvider()),
        ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
        ChangeNotifierProvider(create: (_) => DropdownProvider()),
        ChangeNotifierProvider(create: (_) => CountProvider()),
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
      theme: context.watch<ModeProvider>().mode
          ? ThemeData.light()
          : ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      onGenerateRoute: _router.generateRoute,
    );
  }
}

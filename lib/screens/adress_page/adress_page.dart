import 'package:flutter/material.dart';
import 'package:organico/core/widgets/texts/texts.dart';

class AdressPage extends StatelessWidget {
  const AdressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: textBold(text: "Adress")),
    );
  }
}

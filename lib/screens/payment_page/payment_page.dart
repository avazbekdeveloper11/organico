import 'package:flutter/material.dart';
import 'package:organico/core/widgets/texts/texts.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: textBold(text: "PaymentPage")),
    );
  }
}

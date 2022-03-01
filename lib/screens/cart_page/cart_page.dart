import 'package:flutter/material.dart';
import '../../core/widgets/texts/texts.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: textBold(text: "Cart"),),
    );
  }
}
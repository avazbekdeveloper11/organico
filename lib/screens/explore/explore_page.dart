import 'package:flutter/material.dart';
import '../../core/widgets/texts/texts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: textBold(text: "Explore"),),
    );
  }
}
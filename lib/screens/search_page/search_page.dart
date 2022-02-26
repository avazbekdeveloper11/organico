import 'package:flutter/material.dart';
import 'package:organico/widgets/texts/texts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textBold(text: "Search page"),
      ),
    );
  }
}

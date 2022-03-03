import 'package:flutter/material.dart';
import 'package:organico/core/widgets/app_bar_widget/app_bar.dart';
import 'package:organico/core/widgets/texts/texts.dart';
import 'package:organico/provider/mode_provider.dart';
import 'package:organico/screens/home_page/home_page.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidgetim(
        context,
        text: "My Orders",
        bottom: TabBar(
          padding: const EdgeInsets.only(bottom: 0),
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: context.watch<ModeProvider>().green,
          indicatorColor: context.watch<ModeProvider>().green,
          unselectedLabelColor: context.watch<ModeProvider>().blackWhite,
          tabs: [
            Tab(child: textBold(text: "Ongoing")),
            Tab(child: textBold(text: "History")),
          ],
        ),
      ),
      body: Column(
        children: [HomePage(), OrderPage()],
      ),
    );
  }
}

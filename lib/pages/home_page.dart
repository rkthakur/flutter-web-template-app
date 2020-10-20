import 'package:flutter/material.dart';
import 'package:tds1/component/hero_banner.dart';
import 'package:tds1/component/global_footer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('I Know Everything'),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [HeroBanner(), HeroBanner(), HeroBanner(), GlobalFooter()],
      ),
    );
  }
}

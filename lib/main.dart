import 'package:flutter/material.dart';
import 'package:tds1/pages/home_page.dart';
import 'package:tds1/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Divine Senses.',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeView(),
    );
  }
}

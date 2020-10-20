/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';
import 'package:tds1/viewmodels/home_viewmodel.dart';
import 'package:tds1/viewmodels/hero_banner.dart';
import 'package:tds1/pages/home_page.dart';
import 'package:tds1/widgets/base_model_widget.dart';

import 'home_view.dart';

class HomeMobilePortrait extends BaseModelWidget<HeroContent> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HeroContent model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(model.headerText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 25.0,
                color: Color.fromRGBO(241, 169, 60, 100),
              )),
          Text(model.subHeaderText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 14.0,
                color: Color.fromRGBO(241, 169, 60, 100),
              )),
          Image.network(model.img)
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends BaseModelWidget<HeroContent> {
  @override
  Widget build(BuildContext context, HeroContent model) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SecondView()));
        },
      ),
      body: Row(
        children: <Widget>[
          Text(model.headerText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 25.0,
                color: Color.fromRGBO(241, 169, 60, 100),
              )),
          Text(model.subHeaderText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 14.0,
                color: Color.fromRGBO(241, 169, 60, 100),
              )),
          Image.network(model.img)
        ],
      ),
    );
  }
}

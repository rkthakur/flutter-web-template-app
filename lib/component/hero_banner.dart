import 'package:flutter/material.dart';
import 'package:tds1/viewmodels/hero_banner.dart';

class HeroBanner extends StatelessWidget {
  final HeroContent heroContent;
  const HeroBanner({Key key, this.heroContent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(heroContent.headerText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 35.0,
                color: Color.fromRGBO(241, 169, 60, 100),
              )),
          Text(heroContent.subHeaderText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 20.0,
                color: Color.fromRGBO(241, 169, 60, 100),
              )),
          Text(heroContent.cta1 + "   " + heroContent.cta2,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 20.0,
                color: Color.fromRGBO(0, 0, 255, 100),
              )),
          Image.network(heroContent.img),
          Text(heroContent.message,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 15.0,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tds1/viewmodels/hero_banner.dart';

class CommonBanner extends StatelessWidget {
  final String img;
  final String msg;
  const CommonBanner({Key key, this.img, this.msg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(img),
          Text(msg,
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

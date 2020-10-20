import 'package:flutter/material.dart';

class GlobalFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Row(
        children: <_FooterContent>[
          _FooterContent(
            copyRight: 'Copy Rights @ The Divine Senses',
            aboutUs: "This is About us",
          )
        ],
      ),
    );
  }
}

class _FooterContent extends StatelessWidget {
  const _FooterContent({
    this.copyRight,
    this.aboutUs,
  });
  final String copyRight;
  final String aboutUs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(copyRight,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 12.0,
                color: Colors.black,
              )),
          Text(aboutUs,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 12.0,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}

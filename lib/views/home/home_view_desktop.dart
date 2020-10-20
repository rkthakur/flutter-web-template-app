/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';
import 'package:tds1/viewmodels/hero_banner.dart';
import 'package:tds1/widgets/base_model_widget.dart';
import 'package:tds1/component/hero_banner.dart';
import 'package:tds1/component/common_banner.dart';
import 'package:tds1/component/global_footer.dart';
import 'package:tds1/component/global_header.dart';
import 'package:tds1/component/drawer.dart';

class HomeDesktop extends BaseModelWidget<HeroContent> {
  @override
  Widget build(BuildContext context, HeroContent model) {
    return Scaffold(
      appBar: GlobalHeader(),
      drawer: GlobalDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeroBanner(heroContent: model),
          CommonBanner(
              img:
                  "https://lunawood.com/wp-content/uploads/2018/02/placeholder-image.png",
              msg: "This is Common Banner"),
          GlobalFooter()
        ],
      ),
    );
  }
}

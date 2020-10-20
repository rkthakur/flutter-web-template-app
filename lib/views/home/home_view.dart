import 'package:flutter/material.dart';
import 'package:tds1/responsive/orientation_layout.dart';
import 'package:tds1/responsive/screen_type_layout.dart';
import 'package:tds1/viewmodels/hero_banner.dart';

import 'package:tds1/widgets/base_widget.dart';

import 'home_view_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return BaseWidget<HeroContent>(
      viewModel: HeroContent(),
      onModelReady: (model) => model.initialise(),
      child: HomeDesktop(),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

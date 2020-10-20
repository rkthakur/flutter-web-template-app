import 'package:flutter/material.dart';

class HeroContent extends ChangeNotifier {
  void initialise() {
    headerText = 'This Banner Header';
    subHeaderText = "This is Sub Heading";
    cta1 = "Learn More >";
    cta2 = "Buy >";
    img = "https://shriji.org/wp-content/uploads/2016/10/Diya.png";
    message =
        "Those who got enlightened have nourished humanity forever! Elevate your Divine senses to celebrate humanity. Introducing a whole range of aromatic divine Diyas and Candles to nourish & elevate your senses.";

    notifyListeners();
  }

  void updateTitle() {
    headerText = 'This Banner Header';
    subHeaderText = "This is Sub Heading";
    img = "https://shriji.org/wp-content/uploads/2016/10/Diya.png";
    cta1 = "Learn More >";
    cta2 = "Buy >";
    img = "https://shriji.org/wp-content/uploads/2016/10/Diya.png";
    message =
        "Those who got enlightened have nourished humanity forever! Elevate your Divine senses to celebrate humanity. Introducing a whole range of aromatic divine Diyas and Candles to nourish & elevate your senses.";
    notifyListeners();
  }

  String headerText;
  String subHeaderText;
  String cta1;
  String cta2;
  String img;
  String message;
}

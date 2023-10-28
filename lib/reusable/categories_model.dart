import 'package:flutter/foundation.dart';

class Categories {
  final String title;
  final String subtitle;
  final String description;
  final VoidCallback? onPress;

  Categories(this.title, this.subtitle, this.description, this.onPress);

  static List<Categories> list = [
    Categories('PV', 'PolyVinyle', '50 pieces', null),
    Categories('Cot', 'Cotton', '27 pieces', null),
    Categories('Pol', 'Polyester', '22.5 pieces', null)
  ];
}

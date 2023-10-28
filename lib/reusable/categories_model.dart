import 'package:flutter/foundation.dart';

class Categories {
  final String title;
  final String subtitle;
  final String description;
  final VoidCallback onPress;

  Categories(this.title, this.subtitle, this.description, this.onPress);
}

import 'package:flutter/material.dart';

class FirstPageModel {
  late AnimationController controller;
  late Animation<Offset> firstWidgetOffsetAnimation;
  late Animation<Offset> secondWidgetOffsetAnimation;
  late Animation<double> firstWidgetHeightAnimation;
  late Animation<Offset> firstWidgetUpwardAnimation;

  bool isAnimated = false;
}

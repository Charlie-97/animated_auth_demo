import 'package:flutter/material.dart';
import 'package:state_extended/state_extended.dart';

import 'first_page_model.dart';

class FirstPageController extends StateXController {
  FirstPageController._() : model = FirstPageModel();
  static final FirstPageController _instance = FirstPageController._();
  factory FirstPageController() => _instance;

  final FirstPageModel model;

  void initializeAnimation(dynamic vsync) {
    model.controller = AnimationController(
      vsync: vsync,
      duration: const Duration(
        seconds: 3,
      ),
    );

    model.firstWidgetOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: model.controller,
        curve: const Interval(
          0.0,
          0.5,
          curve: Curves.easeInOut,
        ),
      ),
    );

    model.firstWidgetUpwardAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.3),
    ).animate(
      CurvedAnimation(
        parent: model.controller,
        curve: const Interval(
          0.5,
          1.0,
          curve: Curves.easeInOut,
        ),
      ),
    );

    model.secondWidgetOffsetAnimation = Tween<Offset>(
      begin: const Offset(1, 0.2),
      end: const Offset(0, 0.2),
    ).animate(
      CurvedAnimation(
        parent: model.controller,
        curve: const Interval(
          0.55,
          1.0,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _startAnimation();
  }

  void _startAnimation() {
    model.controller.forward();
  }
}

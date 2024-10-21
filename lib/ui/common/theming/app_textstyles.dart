import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTextstyles {
  static const TextStyle primaryButton = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 24 / 14,
    letterSpacing: -0.002,
  );

  static TextStyle secondaryButton = primaryButton.copyWith(
    color: appPrimaryOrange,
  );
}

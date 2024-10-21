import 'package:flutter/material.dart';

import 'app_colors.dart';

final LinearGradient  buttonGradient = LinearGradient(
  colors: [
    appLightOrange.withOpacity(1),
    appPrimaryOrange.withOpacity(1),
  ],
  begin: Alignment.bottomRight,
  end: Alignment.topCenter,
);
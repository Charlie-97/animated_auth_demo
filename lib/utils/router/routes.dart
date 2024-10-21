import 'package:flutter/material.dart';

import '../../ui/views/first_page/first_page_view.dart';

const String initialRoute = FirstPageView.routeName;
Map<String, WidgetBuilder> routes = {
  FirstPageView.routeName: (context) => const FirstPageView(),
};

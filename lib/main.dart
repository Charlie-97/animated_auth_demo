import 'package:animated_auth_demo/utils/router/routes.dart';
import 'package:flutter/material.dart';

// import 'utils/router/app_router.dart';
// import 'utils/router/base_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // navigatorKey: BaseNavigator.key,
      // initialRoute: AuthView.routeName,
      // onGenerateRoute: AppRouter.onGenerateRoute,
      // home: FirstPageView(),
      initialRoute: initialRoute,
      routes: routes,
    );
  }
}

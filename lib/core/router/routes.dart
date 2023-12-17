import 'package:flutter/material.dart';

class AppRouter {
  static final RouteObserver<ModalRoute<void>> routeObserver =
      RouteObserver<ModalRoute<void>>();

  static const String splashScreen = '/';

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // region Splash
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const Scaffold());

      // endregion
    }
    return null;
  }
}

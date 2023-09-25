import 'package:flutter/material.dart';

import '../screens/splash_screen/splash_screen.dart';
import 'routes.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    // final arguments=settings.arguments;
    switch (settings.name) {
      case Routes.initial:
          return MaterialPageRoute(builder: (ctx) =>const ScreenSplash());
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}

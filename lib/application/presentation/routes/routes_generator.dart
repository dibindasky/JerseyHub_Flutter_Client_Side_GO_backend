import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/api_test_page.dart/api_test.dart';
import 'package:jerseyhub/application/presentation/screens/bottom_bar/bottom_bar_screen.dart';
import 'package:jerseyhub/application/presentation/screens/auth/otp_screen.dart';
import 'package:jerseyhub/application/presentation/screens/auth/sigin_up_screen.dart';

import '../screens/auth/sign_in_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import 'routes.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    //final arguments=settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signUpPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignUP());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignIn());
      case Routes.otpVerification:
        return MaterialPageRoute(
            builder: (ctx) => const ScreenOTPVerification());
      case Routes.bottomBar:
        return MaterialPageRoute(builder: (ctx) => const ScreenBottombar());
      case Routes.testScreen:
        return MaterialPageRoute(builder: (ctx) => ApiTestScreen());
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

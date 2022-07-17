import 'package:flutter/material.dart';
import 'package:hearme/page/login/login_page.dart';
import 'package:hearme/page/login_google/login_google_page.dart';
import 'package:hearme/page/signup/signup_page.dart';
import 'package:hearme/page/splash/splash_page.dart';
import 'package:hearme/page/onbroading/onbroading_page.dart';
import 'package:hearme/resources/app_strings.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String signupRoute = "/signup";
  static const String loginGoogleRoute = "/logingoogleRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnbroadingPage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupPage());
      case Routes.loginGoogleRoute:
        return MaterialPageRoute(builder: (_) => const LoginGooglePage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}

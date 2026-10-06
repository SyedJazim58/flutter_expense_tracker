import 'package:expense_tracker/view/screens/auth/login_screen.dart';
import 'package:expense_tracker/view/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case signup:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
    }
  }
}
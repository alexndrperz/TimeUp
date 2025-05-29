// lib/routes/route_manager.dart

import 'package:flutter/material.dart';
import 'package:time_up_app/presentation/screens/auth/login_page.dart';
import 'package:time_up_app/presentation/screens/home/home_layout_page.dart';

class RouteManager {
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String stats = '/stats';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeLayoutPage());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('Ruta no definida: ${settings.name}')),
              ),
        );
    }
  }
}

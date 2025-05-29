import 'package:flutter/material.dart';
import 'package:time_up_app/routes/route_manager.dart';

void main() {
  runApp(const TimeUpApp());
}

class TimeUpApp extends StatelessWidget {
  const TimeUpApp({Key? key}) : super(key: key);
  // prueba
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu App',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.login,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}

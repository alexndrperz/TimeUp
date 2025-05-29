import 'package:flutter/material.dart';

import 'presentation/screens/auth/login_page.dart';

void main() {
  runApp(const TimeUpApp());
}

class TimeUpApp extends StatelessWidget {
  const TimeUpApp({Key? key}) : super(key: key);
  // prueba
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const LoginPage(),
    );
  }
}

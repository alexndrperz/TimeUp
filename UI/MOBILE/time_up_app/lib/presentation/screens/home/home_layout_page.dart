import 'package:flutter/material.dart';

class HomeLayoutPage extends StatefulWidget {
  const HomeLayoutPage({super.key});

  @override
  State<HomeLayoutPage> createState() => _HomeLayoutPageState();
}

class _HomeLayoutPageState extends State<HomeLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Pantalla de inicio',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const MainScreen(), // Main screen route
        '/setting': (context) => const SettingScreen(), // Setting screen route
        '/tentang': (context) => const TentangScreen(), // Tentang screen route
      },
    );
  }
}

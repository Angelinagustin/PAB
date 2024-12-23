import 'package:flutter/material.dart';
import 'screens/halaman_utama_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Restoran Palembang',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HalamanUtamaScreen(),
        '/login': (context) => const LoginScreen(),
      },
      // Replace with LoginScreen if needed
    );
  }
}

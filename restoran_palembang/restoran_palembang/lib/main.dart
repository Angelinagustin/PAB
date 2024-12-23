import 'package:flutter/material.dart';
import 'screens/halaman_utama_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restoran Palembang',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HalamanUtamaScreen(),
    );
  }
}

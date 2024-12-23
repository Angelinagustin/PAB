import 'package:button/screens/menu_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tentukan rute aplikasi
      initialRoute: '/', // Halaman pertama yang muncul
      routes: {
        '/': (context) => const MenuScreen(),
      },
    );
  }
}

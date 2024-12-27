import 'package:flutter/material.dart';

class TentangScreen extends StatelessWidget {
  const TentangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the entire Scaffold background to white
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        centerTitle: true,
        backgroundColor: Colors.white, // AppBar background set to white
        shadowColor: Colors.black,
        elevation: 3,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Aplikasi Restoran Palembang',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Image.asset(
                'images/logo-aplikasi-restoran-palembang.png',
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              const Text(
                'Versi 2.25.24.23',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                '© 2024-2025',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Aplikasi Restoran Palembang merupakan aplikasi yang menampilkan restoran-restoran yang ada di Palembang beserta informasi dan penilaian restoran terkait. Aplikasi ini dapat memudahkan pengguna mencari restoran yang berkualitas dan sesuai dengan keinginan serta berbagi informasi dengan pengguna lain.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

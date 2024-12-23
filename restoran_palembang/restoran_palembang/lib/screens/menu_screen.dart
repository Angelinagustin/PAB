import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key}); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 3,
        actions: [
          // Profile icon on the right
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {},
          ),
          const SizedBox(
              width: 10), // Optional space between the icon and the edge
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/logo.png', // Ensure the logo is placed in the correct folder
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Restoran Palembang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Versi 2.25.24.23',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Text(
              '© 2024-2025',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              'Aplikasi Restoran Palembang merupakan aplikasi yang menampilkan restoran-restoran yang ada di Palembang beserta informasi dan penilaian restoran terkait. Aplikasi ini dapat memudahkan pengguna mencari restoran yang berkualitas dan sesuai dengan keinginan serta berbagi informasi dengan pengguna lain.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

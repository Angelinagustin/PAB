import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
            onPressed: () {
              // Action for profile icon, e.g., navigate to profile screen
              print('Profile icon pressed');
            },
          ),
          const SizedBox(
              width:
                  10), // Optional: Adds some space between the icon and the edge
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login button
            const SizedBox(height: 16),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 113, 0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Riwayat Ulasan',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Sign Up button with the same size and style as the Login button
            const SizedBox(height: 16),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 113, 0),
                ),
                onPressed: () {},
                child: const Text(
                  'Laporkan Masalah',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 113, 0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Tentang Aplikasi',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

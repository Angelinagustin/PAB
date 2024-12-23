import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'), // Corrected title
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 3,
        actions: [
          // Profile icon on the right
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              // Navigate to profile screen (assuming you have one)
              Navigator.pushNamed(context, '/profile'); // Example route
            },
          ),
          const SizedBox(width: 10), // Optional space between icon and edge
        ],
      ),
      body: ListView(
        children: [
          FavoriteItem(
            imageUrl:
                'assets/images/ayam_gepuk.jpg', // Ubah sesuai path gambar Anda
            title: 'Ayam Gepuk Pak Gembus',
            description: 'Ayam Gepuk Pak Gembus merupakan ...',
            rating: 5,
          ),
          FavoriteItem(
            imageUrl:
                'assets/images/sari_mulia.jpg', // Ubah sesuai path gambar Anda
            title: 'Sari Mulia',
            description: 'Sari Mulia merupakan restoran yang menjual ...',
            rating: 4,
          ),
          FavoriteItem(
            imageUrl:
                'assets/images/mi_gacoan.jpg', // Ubah sesuai path gambar Anda
            title: 'Mi Gacoan',
            description: 'Mi Gacoan menyajikan berbagai pilihan mi pedas ...',
            rating: 5,
          ),
        ],
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double rating;

  const FavoriteItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align content at top
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imageUrl,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text left
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(description),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text(rating.toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

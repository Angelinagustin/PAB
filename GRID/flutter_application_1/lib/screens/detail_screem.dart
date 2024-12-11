import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Home varHome;
  const DetailScreen({super.key, required this.varHome});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isFavorite = false;

  Future<void> _loadFavoriteStatus()async {
    Shared
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

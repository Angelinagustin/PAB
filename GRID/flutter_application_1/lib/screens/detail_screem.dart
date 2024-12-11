import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailScreen extends StatefulWidget {
  final Home varHome;
  const DetailScreen({super.key, required this.varHome});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isFavorite = false;

  Future<void> _loadFavoriteStatus()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoriteHomes = preds.getStringList('favoriteHomes') ?? [];
    setState((){
      _isFavorite =favoriteHomes.contains(widget.varHome.name);
    });
  }

  @override
  void initState(){
    super.initState();
    _loadFavoriteStatus();
  }

  Future<void> _toggleFavorite()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoriteHomes = prefs.getStringList('favoriteHomes')??[];

    setState((){
      if (_isFavorite){
        favoriteHomes.remove(widget.varHome.name);
        _isFavorite = false;
        ScaffoldMessenger.of(context).showSnackBar(showSnackBar(
          content: Text ('${widget.varHome.name}remove from favorites')));
      } else {
        favoriteHomes.add(widget.varHome.name);
        _isFavorite = true;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:  Text ('${widget.varHome.name}add to favorites')));
      }
    });
    await prefs.setStringList ('favoriteHomes', favoriteHomes);
  }
}

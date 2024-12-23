import 'package:flutter/material.dart';
import 'package:restoran_palembang/screens/favorite_screen.dart';
import 'package:restoran_palembang/screens/home_screen.dart';
import 'package:restoran_palembang/screens/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    FavoriteScreen(),
    SettingScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          //item pertama
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //item ledua
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          //itenm ketiga
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

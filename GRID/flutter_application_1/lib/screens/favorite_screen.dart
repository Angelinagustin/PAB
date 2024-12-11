import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/home_data.dart';
import 'package:flutter_application_1/models/home.dart';
import 'package:flutter_application_1/screens/detail_screem.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Home> _favoriteHomes = [];

  Future<void> _loadFavoriteHomes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoriteHomesNames =
        prefs.getStringList('fovoriteHomes') ?? [];

    setState(() {
      _favoriteHomes = homeList
          .where((home) => favoriteHomesNames.contains(home.name))
          .toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initstate
    super.initState();
    _loadFavoriteHomes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Favorite')),
        body: SafeArea(child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
                padding: const EdgeInsets.all(8),
                itemCount: _favoriteHomes.length, itemBuilder: (context, index) {
                  Home varHome = _favoriteHomes[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(varHome: varHome)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                        margin: const EdgeInsets.all(6),
                        elevation: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                            //gambar tempat
                            Expanded(child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(varHome.imageAsset, fit: BoxFit.cover,),
                            )),
                            //nama tempt
                            Padding(padding: const EdgeInsets.only(left: 16, top: 8),
                            child: Text(varHome.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // lokasi tempat 
                          Padding(padding: const EdgeInsets.only(left: 16, bottom: 8),
                          child: Text(varHome.location, style: const TextStyle(fontSize: 12),
                          ),
                          ),
                          ],
                        )),
                    ),
                  );
                },
              )
            ],
          ),
        )),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:task_flutter/models/universe_model.dart';
import 'package:task_flutter/screens/favorites_screen.dart';
import 'package:task_flutter/widgets/universe_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Space'),
        actions: [_buildFavoritesIcon()],
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (_, index) => UniverseWidget(
              changeIsFavorite: () => _changeFavorite(index),
              universeModel: universes[index],
            ),
            itemCount: universes.length,
          )),
    );
  }

  Widget _buildFavoritesIcon() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton.icon(
          label: Text('Favorites', style: TextStyle(color: Colors.orange)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => FavoriteScreen()));
          },
          icon: Icon(Icons.favorite, color: Colors.orange)),
    );
  }

  void _changeFavorite(int index) {
    setState(() {
      universes[index].favorite = !universes[index].favorite;
    });
  }
}

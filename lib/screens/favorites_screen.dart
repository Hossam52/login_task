import 'package:flutter/material.dart';
import 'package:task_flutter/models/universe_model.dart';
import 'package:task_flutter/widgets/universe_widget.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final List<UniverseModel> favorites =
        universes.where((element) => element.favorite == true).toList();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Favorites'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (_, index) => UniverseWidget(
              key: UniqueKey(),
              changeIsFavorite: () => _changeFavorite(index),
              universeModel: favorites[index],
            ),
            itemCount: favorites.length,
          )),
    );
  }

  void _changeFavorite(int index) {
    setState(() {
      universes[index].favorite = !universes[index].favorite;
    });
  }
}

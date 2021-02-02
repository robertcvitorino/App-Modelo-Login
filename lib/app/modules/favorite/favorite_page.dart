import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {
  final String title;
  const FavoritePage({Key key, this.title = "Favorite"}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState
    extends ModularState<FavoritePage, FavoriteController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}

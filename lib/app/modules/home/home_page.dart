import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poupe_pila/app/modules/favorite/favorite_module.dart';
import 'package:poupe_pila/app/modules/favorite/favorite_page.dart';
import 'package:poupe_pila/app/modules/search/search_module.dart';
import 'package:poupe_pila/app/modules/search/search_page.dart';

import 'package:poupe_pila/app/modules/shopping_cart/shopping_cart_module.dart';
import 'package:poupe_pila/app/modules/shopping_cart/shopping_cart_page.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            color: Colors.orange,
            onPressed: controller.pagePerfil,
            icon: Icon(Icons.account_circle),
          )
        ],
        title: Text('Pesquisa'),
      ),
      body: PageView(
        controller: controller.pageViewController,
        children: [
          RouterOutlet(module: SearchModule()),
          RouterOutlet(module: FavoriteModule()),
          RouterOutlet(module: ShoppingCartModule()),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        builder: (BuildContext context, Widget child) {
          return BottomNavigationBar(
            currentIndex: controller.pageViewController?.page?.round() ?? 0,
            onTap: (index) {
              controller.pageViewController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Favorito'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                title: Text('Carrinho'),
              ),
            ],
          );
        },
        animation: controller.pageViewController,
      ),
    );
  }
}

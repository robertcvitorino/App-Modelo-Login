import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poupe_pila/app/modules/components/buttonApp.dart';
import 'shopping_cart_controller.dart';

class ShoppingCartPage extends StatefulWidget {
  final String title;
  const ShoppingCartPage({Key key, this.title = "ShoppingCart"})
      : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState
    extends ModularState<ShoppingCartPage, ShoppingCartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Material(
            elevation: 10,
            shadowColor: Colors.grey,
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            child: Container(
                width: width * 0.9,
                height: height * 0.18,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      child: Material(
                        elevation: 10,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                        child: Container(
                          height: height * 0.16,
                          width: width * 0.3,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Coca-Cola',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text('2 litros'),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(Icons.star_border),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              elevation: 8,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(25),
              color: Colors.red,
              child: Container(
                height: height * 0.10,
                width: width * 0.9,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [Text('Komprao')],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [Text('R5')],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

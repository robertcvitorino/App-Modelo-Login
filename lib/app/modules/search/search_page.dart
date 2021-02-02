import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poupe_pila/app/modules/components/inputTextApp.dart';
import 'search_controller.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class SearchPage extends StatefulWidget {
  final String title;
  const SearchPage({Key key, this.title = "Search"}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 45),
              child: Text(
                'Bem Vindo Usuario',
                style: TextStyle(color: Colors.black54, fontSize: 24),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 45),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: Text(
                      'Só aqui você encontra a melhor promoção da sua região',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: InputText(
                iconTextField: Icon(Icons.search),
                inputColor: Colors.grey[200],
                buttonText: 'Nome Produto',
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, bottom: 35),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: Text(
                      'Ou se preferir bipar ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              child: GestureDetector(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 8,
                    shadowColor: Colors.grey,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: controller.leituraCodigo,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.asset('assets/codigo_barra.png'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Text(
                                  'Bipar codigo de Barra',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

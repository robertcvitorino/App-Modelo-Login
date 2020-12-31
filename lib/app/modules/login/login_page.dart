import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poupe_pila/app/modules/components/buttonMaterial.dart';
import 'package:poupe_pila/app/modules/components/input_text_app.dart';
import 'package:poupe_pila/app/modules/components/logo_app.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          LogoApp(
            imageHeight: 0.4,
            imageWidth: 0.6,
            paddingTop: 35,
            image: 'assets/logo-test2.png',
          ),
          Observer(builder: (_) {
            return InputText(
              buttonText: 'Login',
              onChange: controller.changeName,
            );
          }),
          Observer(builder: (_) {
            return InputText(
              paddingTop: 10,
              buttonText: 'Senha',
              onChange: controller.changeSenha,
            );
          }),
          SizedBox(
            height: 15,
          ),
          ButtonMaterial(
            onPressed: controller.login,
            paddingTop: 25,
            textButton: 'Entrar',
          )
        ],
      ),
    ));
  }
}

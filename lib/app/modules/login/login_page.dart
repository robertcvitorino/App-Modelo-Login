import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poupe_pila/app/modules/components/buttonApp.dart';
import 'package:poupe_pila/app/modules/components/inputTextApp.dart';
import 'package:poupe_pila/app/modules/components/logoApp.dart';
import 'package:poupe_pila/app/modules/components/textGestureDetector.dart';
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
    return Center(
      child: Material(
          child: Container(
        color: Colors.orange,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            LogoApp(
              imageHeight: 0.2,
              imageWidth: 0.4,
              paddingTop: 100,
              paddingBottom: 20,
              image: 'assets/logo-poupe-pila.png',
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 50),
              child: Text(
                'Pope Pila',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Observer(builder: (_) {
              return InputText(
                iconTextField: Icon(Icons.account_circle),
                buttonText: 'Usuario',
                onChange: controller.changeName,
              );
            }),
            Observer(builder: (_) {
              return InputText(
                iconTextField: Icon(Icons.lock_outline),
                paddingTop: 10,
                buttonText: 'Senha',
                onChange: controller.changeSenha,
              );
            }),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Observer(builder: (_) {
                  return TextGestureDetector(
                    text: 'Recuperar senha',
                    rightPadding: 25,
                    colorText: Colors.white,
                  );
                })
              ],
            ),
            Observer(builder: (_) {
              return ButtonMaterial(
                buttonColor: Colors.purple,
                onPressed: controller.login,
                paddingTop: 40,
                paddingBottom: 60,
                textButton: 'Entrar',
              );
            }),
            Observer(builder: (_) {
              return TextGestureDetector(
                text: 'Criar conta',
                colorText: Colors.white,
                onTap: controller.createAccount,
              );
            })
          ],
        ),
      )),
    );
  }
}

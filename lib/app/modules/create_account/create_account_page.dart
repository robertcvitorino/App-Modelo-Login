import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poupe_pila/app/modules/components/buttonApp.dart';
import 'package:poupe_pila/app/modules/components/inputTextApp.dart';
import 'create_account_controller.dart';

class CreateAccountPage extends StatefulWidget {
  final String title;
  const CreateAccountPage({Key key, this.title = ""}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState
    extends ModularState<CreateAccountPage, CreateAccountController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(color: Colors.purple),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 60),
                child: Text(
                  'Criar conta',
                  style: TextStyle(color: Colors.black54, fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Observer(builder: (_) {
                  return InputText(
                    //onChange: controller,  função para realizar o cadastro
                    iconTextField: Icon(Icons.account_circle),
                    buttonText: 'Usuario',
                    inputColor: Colors.grey[200],
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Observer(builder: (_) {
                  return InputText(
                    //onChange: controller,  função para realizar o cadastro
                    iconTextField: Icon(Icons.email_outlined),
                    buttonText: 'Email',
                    inputColor: Colors.grey[200],
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Observer(builder: (_) {
                  return InputText(
                    //onChange: controller,  função para realizar o cadastro
                    iconTextField: Icon(Icons.lock_outline),
                    buttonText: 'Senha',
                    inputColor: Colors.grey[200],
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Observer(builder: (_) {
                  return InputText(
                    //onChange: controller,  função para realizar o cadastro
                    iconTextField: Icon(Icons.lock_outline),
                    buttonText: 'Confirma senha',
                    inputColor: Colors.grey[200],
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Observer(builder: (_) {
                  return ButtonMaterial(
                    buttonColor: Colors.orange,
                    textButton: 'Criar Conta',
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

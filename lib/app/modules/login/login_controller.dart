import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  //Escuta variavel
  @observable
  String usuaro;
  //Seta variavel com valor
  @action
  changeName(String newUsuario) => usuaro = newUsuario;

  @observable
  String senha;
  @action
  changeSenha(String newSenha) => senha = newSenha;

  @action
  login() {
    Modular.to.pushNamed('/home');
  }

  @action
  createAccount() {
    Modular.to.pushNamed('/CreateAccount');
  }
}

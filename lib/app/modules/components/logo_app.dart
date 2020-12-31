import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  // largura da imagem
  final double imageWidth;
  // altura da imagem
  final double imageHeight;
  // padding do topo da tela do aplicativo com imagem sendo por padrão 5
  final double paddingTop;
  // padding do abaixo da tela do aplicativo com imagem sendo por padrão 5
  final double paddingBottom;
  final String image;

  //Construtor da classe
  const LogoApp(
      {Key key,
      this.imageWidth = 0.6,
      this.imageHeight = 0.4,
      this.paddingTop = 5,
      this.paddingBottom = 5,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
        child: Container(
          width: MediaQuery.of(context).size.width * imageWidth,
          height: MediaQuery.of(context).size.height * imageHeight,
          child: Image.asset(image),
        ));
  }
}

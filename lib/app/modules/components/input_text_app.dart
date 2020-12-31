import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final Function onChange;
  final double buttonWidth;
  final double buttonHeith;
  final String buttonText;
  final double paddingTop;
  final double paddingBottom;
  final TextInputType inputType;

  const InputText({
    Key key,
    this.onChange,
    this.buttonWidth = 0.80,
    this.buttonHeith = 0.06,
    this.buttonText,
    this.paddingTop = 5,
    this.paddingBottom = 5,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom, top: paddingTop),
      child: Container(
        width: MediaQuery.of(context).size.width * buttonWidth,
        height: MediaQuery.of(context).size.height * buttonHeith,
        child: Material(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30),
            child: TextField(
              obscureText:
                  buttonText == 'Senha' || buttonText == 'senha' ? true : false,
              onChanged: onChange,
              decoration: InputDecoration(
                labelText: buttonText,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
              keyboardType: inputType,
            )),
      ),
    );
  }
}

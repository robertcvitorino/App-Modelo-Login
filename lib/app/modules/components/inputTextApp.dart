import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final Function onChange;
  final double buttonWidth;
  final double buttonHeith;
  final String buttonText;
  final double paddingTop;
  final double paddingBottom;
  final TextInputType inputType;
  final Color inputColor;
  final Icon iconTextField;

  const InputText({
    Key key,
    this.onChange,
    this.buttonWidth = 0.80,
    this.buttonHeith = 0.06,
    this.buttonText,
    this.paddingTop = 5,
    this.paddingBottom = 5,
    this.inputType,
    this.inputColor,
    this.iconTextField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom, top: paddingTop),
      child: Container(
        width: MediaQuery.of(context).size.width * buttonWidth,
        height: MediaQuery.of(context).size.height * buttonHeith,
        child: Material(
          color: inputColor,
          borderRadius: BorderRadius.circular(30),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: TextFormField(
                keyboardType: inputType,
                obscureText: buttonText == 'Senha' || buttonText == 'senha'
                    ? true
                    : false,
                onChanged: onChange,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(top: 2),
                  icon: iconTextField,
                  labelText: buttonText,
                  hintText: null,
                )),
          ),
        ),
      ),
    );
  }
}

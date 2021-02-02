import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ButtonMaterial extends StatelessWidget {
  final Function onPressed;
  final String textButton;
  final Color buttonColor;
  final Color textColor;
  final double buttonElevation;
  final double buttonWidth;
  final double buttonHeight;
  final double paddingTop;
  final double sizeText;
  final double borderButton;

  final double paddingBottom;

  const ButtonMaterial(
      {Key key,
      this.onPressed,
      this.textButton = 'Insira um name',
      this.buttonColor = Colors.purple,
      this.textColor = Colors.white,
      this.buttonWidth = 0.6,
      this.buttonHeight = 0.06,
      this.paddingTop = 5,
      this.paddingBottom = 5,
      this.buttonElevation = 8,
      this.sizeText = 14,
      this.borderButton = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: Material(
        elevation: buttonElevation,
        color: buttonColor,
        shadowColor: Colors.grey[400],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderButton)),
        child: Container(
            width: MediaQuery.of(context).size.width * buttonWidth,
            height: MediaQuery.of(context).size.height * buttonHeight,
            child: Center(
                child: FlatButton(
                    minWidth: MediaQuery.of(context).size.width * buttonWidth,
                    height: MediaQuery.of(context).size.height * buttonHeight,
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderButton)),
                    onPressed: onPressed,
                    child: Text(
                      textButton,
                      style: TextStyle(color: Colors.white, fontSize: sizeText),
                    )))),
      ),
    );
  }
}

// ButtonTextTheme textTheme, Color textColor, Color disabledTextColor, Color color, Color disabledColor, Color highlightColor, Color splashColor, Brightness colorBrightness, double elevation, double highlightElevation, double disabledElevation, EdgeInsetsGeometry padding, ShapeBorder shape, Clip clipBehavior: Clip.none, MaterialTapTargetSize materialTapTargetSize, Duration animationDuration, double minWidth, double height, Widget child })

import 'package:flutter/material.dart';

class TextGestureDetector extends StatelessWidget {
  final double rightPadding;
  final double leftPadding;
  final double toptPadding;
  final double bottomtPadding;
  final String text;
  final Function onTap;
  final Color colorText;

  const TextGestureDetector(
      {Key key,
      this.rightPadding = 0,
      this.leftPadding = 0,
      this.toptPadding = 0,
      this.bottomtPadding = 0,
      this.text,
      this.onTap,
      this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            right: rightPadding,
            left: leftPadding,
            bottom: bottomtPadding,
            top: toptPadding),
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyle(color: colorText),
          ),
        ));
  }
}

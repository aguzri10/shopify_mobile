import 'package:flutter/material.dart';
import 'package:shopify_mobile/styles/colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final Color color, textColor;
  final bool disable;
  final double vertical, horizontal;
  final String text;

  const PrimaryButton({
    Key key,
    @required this.onPressed,
    this.color = primaryColorNormal,
    this.textColor = Colors.white,
    this.disable = false,
    this.vertical = 14,
    this.horizontal = 12,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: color,
      disabledColor: disable ? color : grayscale4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}

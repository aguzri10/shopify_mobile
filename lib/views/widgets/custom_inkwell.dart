import 'package:flutter/material.dart';

class CustomInkwell extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final double radius;

  const CustomInkwell({
    Key key,
    @required this.onTap,
    @required this.child,
    this.radius = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}

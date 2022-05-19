import 'package:flutter/material.dart';

class UsableCard extends StatelessWidget {
  UsableCard({
    @required this.colour,
    this.cardClild,
    this.OnPress,
  });

  final Color colour;
  final Widget cardClild;
  final Function OnPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPress,
      child: Container(
        child: cardClild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

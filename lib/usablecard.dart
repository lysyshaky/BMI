import 'package:flutter/material.dart';

class UsableCard extends StatelessWidget {
  UsableCard({@required this.colour, this.cardClild});

  final Color colour;
  final Widget cardClild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardClild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

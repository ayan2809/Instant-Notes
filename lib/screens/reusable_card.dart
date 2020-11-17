import 'package:flutter/material.dart';

class ResusableCard extends StatelessWidget {
  ResusableCard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final String cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Text(cardChild),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

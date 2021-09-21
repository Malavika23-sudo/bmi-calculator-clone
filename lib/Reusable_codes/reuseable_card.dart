import 'package:flutter/material.dart';
import '../constants/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color? colour;
  final Widget? childCard;
  final VoidCallback? onPress;
  ReusableCard({this.colour, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          //onPress,
          () => {onPress?.call()},
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(kMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

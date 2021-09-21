import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class IconandData extends StatelessWidget {
  //final iconDataColour;
  final textdata;
  final IconData? gendericon;
  IconandData({this.gendericon, this.textdata});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          gendericon,
          size: kSizeofIcon,
          color: kIconColourconstant,
        ),
        Text(
          textdata,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

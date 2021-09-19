import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

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
      ],
    );
  }
}

class DataIcons extends StatelessWidget {
  final headline;
  final measure;
  DataIcons({this.headline, this.measure});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(headline, style: kLabelTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(measure, style: kLabelTextStyle2), Text('cm')],
        ),
        // Icons(),
      ],
    );
  }
}

class IconsForCard extends StatelessWidget {
  final IconData? weightIncrement;
  IconsForCard({this.weightIncrement});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          weightIncrement,
          size: kSizeofIcon2,
          color: kIconColourconstant,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constants.dart';

class IconsForCard extends StatelessWidget {
  final Function? iconincrement;
  final Function? icondecrement;
  final headline;
  final String measure;
  IconsForCard(
      {this.iconincrement,
      this.headline,
      required this.measure,
      this.icondecrement});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(headline, style: kLabelTextStyle),
          SizedBox(
            height: 10.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(measure, style: kLabelTextStyle2),
            Text('cm'),
          ]),
          SizedBox(
            height: 3.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kIconColourconstant),
                  elevation: MaterialStateProperty.all(8.0),
                  shape: MaterialStateProperty.all<CircleBorder>(
                    CircleBorder(),
                  ),
                ),
                onPressed: () => iconincrement,
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: kInactiveColour,
                  size: kSizeofIcon1,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kIconColourconstant),
                  elevation: MaterialStateProperty.all(8.0),
                  shape: MaterialStateProperty.all<CircleBorder>(
                    CircleBorder(),
                  ),
                ),
                onPressed: () => icondecrement,
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: kInactiveColour,
                  size: kSizeofIcon1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

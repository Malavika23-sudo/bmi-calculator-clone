import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constants.dart';

class IconsForCard extends StatelessWidget {
  final Function? iconincrement;
  final headline;
  final String measure;
  IconsForCard({this.iconincrement, this.headline, required this.measure});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            children: [
              SizedBox(
                width: 20.0,
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
                onPressed: () => iconincrement,
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 20.0,
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
                onPressed: () => iconincrement,
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

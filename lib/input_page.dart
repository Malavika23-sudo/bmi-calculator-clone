import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_calculator/icon_data.dart';
import 'package:new_bmi_calculator/reuseable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.female;
  int height = 155;
  int weight = 75;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              gender = Gender.male;
                            });
                          },
                          colour: gender == Gender.male
                              ? kActiveColour
                              : kInactiveColour,
                          childCard: IconandData(
                              //iconDataColour: kIconColourconstant,
                              gendericon: FontAwesomeIcons.mars,
                              textdata: 'MALE'),
                        )),
                    Expanded(
                      flex: 1,
                      child: ReusableCard(
                        onPress: () {
                          setState(() {
                            gender = Gender.female;
                          });
                        },
                        colour: gender == Gender.female
                            ? kActiveColour
                            : kInactiveColour,
                        childCard: IconandData(
                            // iconDataColour: kIconColourconstant,
                            gendericon: FontAwesomeIcons.venus,
                            textdata: 'FEMALE'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ReusableCard(
                    colour: kInactiveColour,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          /// to make the two text in this row to be in same base line
                          crossAxisAlignment: CrossAxisAlignment.baseline,

                          /// specifies the the of text to be in baseline
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kLabelTextStyle2,
                            ),
                            Text('cm'),
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 0,
                            max: 300,
                            activeColor: Colors.pink,
                            inactiveColor: Colors.blueGrey,
                            label: '$height',
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                            }),
                      ],
                    )),
              ),
              Expanded(
                flex: 1,
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kInactiveColour,
                      childCard: Column(
                        children: [
                          DataIcons(
                            headline: weight.toString(),
                            measure: '75',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconsForCard(
                                  weightIncrement: FontAwesomeIcons.plusCircle),
                              IconsForCard(
                                  weightIncrement:
                                      FontAwesomeIcons.minusCircle),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kInactiveColour,
                      childCard: Column(
                        children: [
                          DataIcons(
                            headline: age.toString(),
                            measure: '15',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconsForCard(
                                  weightIncrement: FontAwesomeIcons.plusCircle),
                              IconsForCard(
                                  weightIncrement:
                                      FontAwesomeIcons.minusCircle),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                color: kColourofBottomContainers,
                margin: EdgeInsets.only(top: 5.0),
                child: Center(
                  child: Text(
                    'CALCULATE YOUR BMI',
                    style: kLabelTextStyle3,
                  ),
                ),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // topLeft: Radius.circular(5.0),
                // topRight: Radius.circular(5.0),
                //),
                width: double.infinity,
                height: kBottomContainerHeight,
              )
            ],
          ),
        ),
      ),
    );
  }
}

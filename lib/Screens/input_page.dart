import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_calculator/Reusable_codes/icon_data.dart';
import 'package:new_bmi_calculator/Reusable_codes/reuseable_card.dart';
import 'package:new_bmi_calculator/Reusable_codes/bottomicons.dart';
import 'package:new_bmi_calculator/Screens/result.dart';
import 'package:new_bmi_calculator/calculate_bmi.dart';
import '../constants/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.female;

  int height = 157;
  int weight = 44;
  int weight2 = 44;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kInactiveColour,
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
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
                      ),
                    ),
                    Expanded(
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
                child: ReusableCard(
                    colour: kInactiveColour,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
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
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xfFEB1555),
                            overlayColor: Color(0x1FEB1555),
                            activeTrackColor: Colors.white,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 0,
                              max: 300,
                              inactiveColor: Colors.blueGrey,
                              label: '$height',
                              onChanged: (double value) {
                                setState(() {
                                  height = value.toInt();
                                });
                              }),
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: Row(children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kInactiveColour,
                      childCard: Column(
                        children: [
                          IconsForCard(
                            headline: 'WEIGHT',
                            measure: weight.toString(),
                            iconincrement: () {
                              setState(() {
                                weight = weight + 1;
                                weight2 = weight.toInt();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kInactiveColour,
                      childCard: Column(
                        children: [
                          IconsForCard(
                            headline: 'Age',
                            measure: age.toString(),
                            iconincrement: () {
                              setState(() {
                                //age++;
                                age = age + 1;
                                print(age);
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Calculator calc = Calculator(weight: weight, height: height);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                                bmiValue: calc.bmiCalc(),
                                bmiResult: calc.bmiResult(),
                                des: calc.bmiDes(),
                              )));
                },
                child: Container(
                  color: kColourofBottomContainers,
                  margin: EdgeInsets.only(top: 5.0),
                  child: Center(
                    child: Text(
                      'CALCULATE YOUR BMI',
                      style: kLabelTextStyle2,
                    ),
                  ),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

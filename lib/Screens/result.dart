import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/constants/constants.dart';
import 'package:new_bmi_calculator/records.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Result extends StatelessWidget {
  Result({this.bmiResult, this.bmiValue, this.des});
  final String? bmiValue;
  final String? bmiResult;
  final String? des;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kInactiveColour,
            title: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text('BMI CALCULATOR'),
            )),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kLabelTextStyle4ColourChange,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: kActiveColour,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ReusableText(
                              textBody: bmiResult!.toUpperCase(),
                              textBodyStyle: kLabelTextStyle1ColorChange),
                          ReusableText(
                              textBody: bmiValue,
                              textBodyStyle: kLabelTextStyle5),
                          ReusableText(textBody: '''Normal BMI Range:
     18.5-25 kg/m2''', textBodyStyle: kLabelTextStyle1),
                          ReusableText(
                              textBody: des, textBodyStyle: kLabelTextStyle1),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 40.0, right: 40.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          kInactiveColour),
                                  elevation: MaterialStateProperty.all(8.0),
                                ),
                                onPressed: () {
                                  // showDialog(
                                  //   context: context,
                                  //   builder: (BuildContext context) {
                                  //     return Column(
                                  //       children: [
                                  //         Icon(FontAwesomeIcons.checkCircle),
                                  //         Expanded(
                                  //             child: Text(
                                  //           'Saved',
                                  //           style: kLabelTextStyle,
                                  //         )),
                                  //       ],
                                  //     );
                                  //   },
                                  // );
                                  // Records record = Records(
                                  //     bmiResult: bmiResult,
                                  //     bmiValue: bmiValue,
                                  //     bmides: des);
                                  // // record.recordKeeper.add(bmiResult: bmiResult,bmiValue: bmiValue,bmides: des);
                                },
                                child: Text("SAVE RESULTS"),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kColourofBottomContainers,
                margin: EdgeInsets.only(top: 5.0),
                child: Center(
                  child: Text(
                    'RECALCULATE YOUR BMI',
                    style: kLabelTextStyle2,
                  ),
                ),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            )
          ],
        ));
  }
}

class ReusableText extends StatelessWidget {
  final textBodyStyle;
  final String? textBody;
  ReusableText({this.textBodyStyle, this.textBody});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
          child: Text(
        textBody.toString(),
        style: textBodyStyle,
      )),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {this.bmiResult, this.bmiValue, this.bmiComment, this.bmiNumericValue});

  final String bmiResult;
  final String bmiValue;
  final String bmiComment;
  final double bmiNumericValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: NeumorphicText(
              'BMI CALCULATOR',
              style: kGlobalTextFormat,
              textStyle: NeumorphicTextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                child: NeumorphicText(
                  'Your Result',
                  style: kNumericValueFormat,
                  textStyle: kNumericValueTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReusableCard(
                  colorr: kActiveCardColor,
                  boxShadowColor:
                      bmiNumericValue >= 18.5 && bmiNumericValue < 25
                          ? kGoodBMIBoxShadowColor
                          : kBadBMIBoxShadowColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NeumorphicText(
                        bmiResult.toUpperCase(),
                        style: bmiNumericValue >= 18.5 && bmiNumericValue < 25
                            ? kGoodResultTextFormat
                            : kBadResultTextFormat,
                        textStyle: kResultTextStyle,
                      ),
                      NeumorphicText(
                        bmiValue,
                        style: bmiNumericValue >= 18.5 && bmiNumericValue < 25
                            ? kGoodBMITextFormat
                            : kBadBMITextFormat,
                        textStyle: kBMITextStyle,
                      ),
                      NeumorphicText(
                        bmiComment,
                        textAlign: TextAlign.center,
                        style: bmiNumericValue >= 18.5 && bmiNumericValue < 25
                            ? kGoodBMIBodyTextFormat
                            : kBadBMIBodyTextFormat,
                        textStyle: kBodyTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              buttonLabel: 'RE-CALCULATE',
              button: 'resultsButton',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}

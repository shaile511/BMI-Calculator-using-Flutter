import 'file:///C:/Users/sshai/AndroidStudioProjects/bmi-calculator-flutter/lib/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/gender_card.dart';
import '../components/reusable_card.dart';
import 'package:flutter/services.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/round_button.dart';
import 'package:bmi_calculator/bmi_brain.dart';

enum Gender {
  male,
  female,
}

int height = 160;
int weight = 50;
int age = 25;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          title: Center(
            child: NeumorphicText(
              'BMI CALCULATOR',
              style: kGlobalTextFormat,
              textStyle: NeumorphicTextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // color: Colors.grey[800],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ReusableCard(
                        onTapDefinition: () {
                          setState(() {
                            selectedGender = Gender.male;
                            HapticFeedback.lightImpact();
                          });
                        },
                        colorr: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        boxShadowColor: selectedGender == Gender.male
                            ? kActiveBoxShadowColor
                            : kDefaultBoxShadowColor,
                        childCard: GenderCard(
                          iconColor: selectedGender == Gender.male
                              ? kActiveGenderIconColor
                              : kInactiveGenderIconColor,
                          genderTextColor: selectedGender == Gender.male
                              ? kActiveGenderTextColor
                              : kInactiveGenderTextColor,
                          iconName: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ReusableCard(
                        onTapDefinition: () {
                          setState(() {
                            selectedGender = Gender.female;
                            HapticFeedback.lightImpact();
                          });
                        },
                        colorr: selectedGender == Gender.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        boxShadowColor: selectedGender == Gender.female
                            ? kActiveBoxShadowColor
                            : kDefaultBoxShadowColor,
                        childCard: GenderCard(
                          iconColor: selectedGender == Gender.female
                              ? kActiveGenderIconColor
                              : kInactiveGenderIconColor,
                          genderTextColor: selectedGender == Gender.female
                              ? kActiveGenderTextColor
                              : kInactiveGenderTextColor,
                          iconName: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ReusableCard(
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            selectedGender != null
                                ? NeumorphicText(
                                    selectedGender == Gender.male
                                        ? 'Vanakkam Nanba!'
                                        : 'Hey Singappenney!',
                                    style: kGlobalTextFormat,
                                    textStyle: NeumorphicTextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height >
                                                  700
                                              ? 18
                                              : 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : SizedBox(height: 0),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 180),
                            NeumorphicText(
                              'HEIGHT',
                              style: kGlobalTextFormat,
                              textStyle: NeumorphicTextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height > 700
                                        ? 18
                                        : 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                NeumorphicText(
                                  height.toString(),
                                  style: kNumericValueFormat,
                                  textStyle: NeumorphicTextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height > 700
                                            ? 50
                                            : 35,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                NeumorphicText(
                                  'cm',
                                  style: kGlobalTextFormat,
                                  textStyle: kLabeltextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius:
                                        MediaQuery.of(context).size.height > 700
                                            ? 15
                                            : 10),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius:
                                        MediaQuery.of(context).size.height > 700
                                            ? 30
                                            : 15),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xFF8D8E98),
                                thumbColor: Color(0xFFF8A00C),
                                overlayColor: Color(0x29F8A00C),
                              ),
                              child: Slider(
                                divisions: 50,
                                value: height.toDouble(),
                                min: 140.0,
                                max: 190.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                    HapticFeedback.selectionClick();
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                        colorr: kActiveCardColor,
                        boxShadowColor: kDefaultBoxShadowColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ReusableCard(
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NeumorphicText(
                              'WEIGHT',
                              style: kGlobalTextFormat,
                              textStyle: NeumorphicTextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height > 700
                                        ? 18
                                        : 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                NeumorphicText(
                                  weight.toString(),
                                  style: kNumericValueFormat,
                                  textStyle: NeumorphicTextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height > 700
                                            ? 50
                                            : 25,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                NeumorphicText(
                                  'kg',
                                  style: kGlobalTextFormat,
                                  textStyle: NeumorphicTextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height > 700
                                            ? 18
                                            : 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  onPress: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                      if (weight < 0) weight = 0;
                                      HapticFeedback.lightImpact();
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight -= 20;
                                      }
                                      if (weight < 0) weight = 0;
                                      HapticFeedback.lightImpact();
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(width: 10),
                                RoundIconButton(
                                    onPress: () {
                                      setState(() {
                                        weight++;
                                        HapticFeedback.lightImpact();
                                      });
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        weight += 20;
                                        HapticFeedback.lightImpact();
                                      });
                                    },
                                    icon: FontAwesomeIcons.plus),
                              ],
                            )
                          ],
                        ),
                        colorr: kActiveCardColor,
                        boxShadowColor: kDefaultBoxShadowColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ReusableCard(
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NeumorphicText(
                              'AGE',
                              style: kGlobalTextFormat,
                              textStyle: NeumorphicTextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height > 700
                                        ? 18
                                        : 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                NeumorphicText(
                                  age.toString(),
                                  style: kNumericValueFormat,
                                  textStyle: NeumorphicTextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height > 700
                                            ? 50
                                            : 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                NeumorphicText(
                                  'YO',
                                  style: kGlobalTextFormat,
                                  textStyle: NeumorphicTextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height > 700
                                            ? 18
                                            : 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  onPress: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                      if (age < 0) age = 0;
                                      HapticFeedback.lightImpact();
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      if (age > 0) {
                                        age -= 20;
                                      }
                                      if (age < 0) age = 0;
                                      HapticFeedback.lightImpact();
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(width: 10),
                                RoundIconButton(
                                    onPress: () {
                                      setState(() {
                                        age++;
                                        HapticFeedback.lightImpact();
                                      });
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        age += 20;
                                        HapticFeedback.lightImpact();
                                      });
                                    },
                                    icon: FontAwesomeIcons.plus),
                              ],
                            )
                          ],
                        ),
                        colorr: kActiveCardColor,
                        boxShadowColor: kDefaultBoxShadowColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonLabel: 'CALCULATE',
              genderThatIsSelected: selectedGender,
              onPressed: () {
                HapticFeedback.vibrate();
                BMIBrain brain =
                    BMIBrain(height: height, weight: weight, age: age);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmiNumericValue: brain.calculateBMI2(),
                        bmiValue: brain.calculateBMI(),
                        bmiComment: brain.getBMIResultComments(),
                        bmiResult: brain.getBMIResultText(),
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

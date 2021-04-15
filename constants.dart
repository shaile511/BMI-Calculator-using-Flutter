import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

const kActiveCardColor = Color(0xFF1D1F33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFF8A00C);
final kDefaultBoxShadowColor = Colors.grey[800];
final kGoodBMIBoxShadowColor = Color(0xFF24D876);
final kBadBMIBoxShadowColor = Colors.red;
const kActiveBoxShadowColor = Color(0xFFF8A00C);
const kInactiveGenderIconColor = Color(0xFF8D8E98);
const kActiveGenderIconColor = Colors.white;
const kInactiveGenderTextColor = Color(0xFF8D8E98);
const kActiveGenderTextColor = Colors.white;

final kLabeltextStyle = NeumorphicTextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final kGlobalTextFormat = NeumorphicStyle(
  color: Color(0xFF8D8E98),
  depth: 1,
  shadowDarkColor: Color(0xFFF8A00C),
  shadowLightColor: Colors.black,
);

final kNumericValueFormat = NeumorphicStyle(
  color: Colors.white,
  depth: 1,
  shadowDarkColor: Color(0xFFF8A00C),
  shadowLightColor: Colors.black,
);

final kNumericValueTextStyle = NeumorphicTextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

final kGoodResultTextFormat = NeumorphicStyle(
  color: Color(0xFF24D876),
  depth: 1,
  shadowDarkColor: Colors.white,
  shadowLightColor: Colors.black,
);

final kBadResultTextFormat = NeumorphicStyle(
  color: Colors.red,
  depth: 1,
  shadowDarkColor: Colors.white,
  shadowLightColor: Colors.black,
);

final kResultTextStyle = NeumorphicTextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w900,
);

final kGoodBMITextFormat = NeumorphicStyle(
  color: Colors.white,
  depth: 2,
  shadowDarkColor: Color(0xFF24D876),
  shadowLightColor: Colors.black,
);

final kBadBMITextFormat = NeumorphicStyle(
  color: Colors.white,
  depth: 2.5,
  shadowDarkColor: Colors.red,
  shadowLightColor: Colors.black,
);

final kBMITextStyle = NeumorphicTextStyle(
  fontSize: 100,
  fontWeight: FontWeight.w900,
);

final kGoodBMIBodyTextFormat = NeumorphicStyle(
  color: Colors.white,
  depth: 2,
  shadowDarkColor: Color(0xFF24D876),
  shadowLightColor: Colors.black,
);

final kBadBMIBodyTextFormat = NeumorphicStyle(
  color: Colors.white,
  depth: 2.5,
  shadowDarkColor: Colors.red,
  shadowLightColor: Colors.black,
);

final kBodyTextStyle = NeumorphicTextStyle(
  fontSize: 22,
  fontStyle: FontStyle.italic,
);

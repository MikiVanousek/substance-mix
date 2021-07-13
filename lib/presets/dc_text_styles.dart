import 'package:drug_combos/presets/dc_colors.dart';
import 'package:flutter/cupertino.dart';

class DCTextStyles {
  static const TextStyle display = TextStyle(
    fontFamily: 'Play',
     color: DCColors.accent,
     fontSize: 22,
  ),

  displayInverted = TextStyle(
      fontFamily: 'Play',
      color: DCColors.primary,
      fontSize: 22,
  ),

  termsAndConditions = TextStyle(
      fontFamily: 'Play',
      color: DCColors.accent,
      fontWeight: FontWeight.w100,
      fontSize: 14,
  ),

  title = TextStyle(
      fontFamily: 'GravitasOne',
      color: DCColors.accent,
      fontSize: 22,
  );

}
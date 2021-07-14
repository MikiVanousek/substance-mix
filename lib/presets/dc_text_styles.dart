import 'package:drug_combos/presets/dc_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DCTextStyles {
  static TextStyle display = TextStyle(
    fontWeight: FontWeight.w100,
    fontFamily: 'Play',
     color: DCColors.accent,
     fontSize: 22,
  ),

  displayInverted = display.copyWith(color: DCColors.primary),

  displayBold = display.copyWith(fontWeight: FontWeight.w600),

  termsAndConditions = display.copyWith(fontSize: 14),

  title = display.copyWith(fontSize: 28)
  ;

}
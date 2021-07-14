import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substance_mix/presets/sm_colors.dart';

class SMTextStyles {
  static TextStyle display = TextStyle(
        fontWeight: FontWeight.w100,
        fontFamily: 'Play',
        color: SMColors.accent,
        fontSize: 22,
      ),
      displayInverted = display.copyWith(color: SMColors.primary),
      displayBold = display.copyWith(fontWeight: FontWeight.w600),
      termsAndConditions = display.copyWith(fontSize: 14),
      title = display.copyWith(fontSize: 28);
}

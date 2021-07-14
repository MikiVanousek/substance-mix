import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:substance_mix/model/combo_results.dart';

class SMColors {
  static const Color primary = Colors.white;
  static const Color accent = Colors.black;
  static const Color navigationDivider = Colors.black12;

  static const Map<ComboResult, Color> resultColors = {
    ComboResult.lrSynergy: Color(0xFF1A68B0),
    ComboResult.lrNoSynergy: Color(0xFF6C9EA9),
    ComboResult.lrDisharmony: Color(0xFF007C0C),
    ComboResult.beCautious: Color(0xFFBCBF07),
    ComboResult.notSafe: Color(0xFFCF7929),
    ComboResult.dangerous: Color(0xFFC60000),
    ComboResult.NaN: primary,
  };
}

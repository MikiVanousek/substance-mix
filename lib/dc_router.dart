import 'dart:developer';

import 'package:drug_combos/bloc/dc_bloc.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/screens/dc_homescreen.dart';
import 'package:drug_combos/screens/dc_legal_popup.dart';
import 'package:drug_combos/screens/dc_picker_popup.dart';
import 'package:drug_combos/screens/dc_popup.dart';
import 'package:flutter/cupertino.dart';

class DCRouter {
  static const String routeHomescreen = '/';
  static const String routeFirstDrugPickerScreen = '/pick_first';
  static const String routeSecondDrugPickerScreen = '/pick_second';
  static const String routeLegalPopup = '/legal_popup';

  static Route generate(RouteSettings settings) {
    final String name = settings.name;

    switch (name) {
      case routeHomescreen:
        log('Routing to homescreen...');
        return PageRouteBuilder(pageBuilder: (BuildContext context,
            Animation<double> animation, Animation<double> secondaryAnimation) {
          return DCHomescreen();
        });

      case routeFirstDrugPickerScreen:
        log('Routing to first drug popup...');
        return DCPopup(child: DCPicker(DrugInputType.first));
      case routeSecondDrugPickerScreen:
        log('Routing to second drug popup...');
        return DCPopup(child: DCPicker(DrugInputType.second));
      case routeLegalPopup:
        log('Routing to legal popup...');
        return DCPopup(child: DCLegalPopup());
      default:
        throw Exception('Unknown route pushed: $name');
    }
  }
}

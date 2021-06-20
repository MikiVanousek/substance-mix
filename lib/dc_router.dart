import 'dart:developer';

import 'package:drug_combos/bloc/dc_bloc.dart';
import 'package:drug_combos/screens/dc_homescreen.dart';
import 'package:drug_combos/screens/dc_picker_popup.dart';
import 'package:flutter/cupertino.dart';

class DCRouter {
  static const String routeHomescreen = '/';
  static const String routeFirstDrugPickerScreen = '/pick_first';
  static const String routeSecondDrugPickerScreen = '/pick_second';

  static Route generate(RouteSettings settings) {
    final String name = settings.name;

    switch (name) {
      case routeHomescreen:
        log('Routing to homescreen...');
        return PageRouteBuilder(pageBuilder: (BuildContext context,
            Animation<double> animation, Animation<double> secondaryAnimation) {
          return DCHomescreen();
        });

        break;
      case routeFirstDrugPickerScreen:
        log('Routing to first drug popup...');
        return DCPickerPopup(DrugInputType.first);
        break;
      case routeSecondDrugPickerScreen:
        log('Routing second drug popup...');
        return DCPickerPopup(DrugInputType.second);
        break;

      default:
        throw Exception('Unknown route pushed: $name');
    }
  }
}

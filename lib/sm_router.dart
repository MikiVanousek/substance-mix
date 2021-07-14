import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:substance_mix/bloc/sm_bloc.dart';
import 'package:substance_mix/screens/sm_homescreen.dart';
import 'package:substance_mix/screens/sm_legal_popup.dart';
import 'package:substance_mix/screens/sm_picker_popup.dart';
import 'package:substance_mix/screens/sm_popup.dart';

class SMRouter {
  static const String routeHomescreen = '/';
  static const String routeFirstSubstancePickerScreen = '/pick_first';
  static const String routeSecondSubstancePickerScreen = '/pick_second';
  static const String routeLegalPopup = '/legal_popup';

  static Route generate(RouteSettings settings) {
    final String name = settings.name;

    switch (name) {
      case routeHomescreen:
        log('Routing to homescreen...');
        return PageRouteBuilder(pageBuilder: (BuildContext context,
            Animation<double> animation, Animation<double> secondaryAnimation) {
          return SMHomescreen();
        });

      case routeFirstSubstancePickerScreen:
        log('Routing to first substance popup...');
        return SMPopup(child: SMPicker(SubstanceInputType.first));
      case routeSecondSubstancePickerScreen:
        log('Routing to second substance popup...');
        return SMPopup(child: SMPicker(SubstanceInputType.second));
      case routeLegalPopup:
        log('Routing to legal popup...');
        return SMPopup(child: SMLegalPopup());
      default:
        throw Exception('Unknown route pushed: $name');
    }
  }
}

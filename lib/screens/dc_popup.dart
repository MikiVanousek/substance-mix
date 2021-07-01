import 'dart:ui';

import 'package:drug_combos/bloc/dc_bloc.dart';
import 'package:drug_combos/bloc/picker_bloc.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:drug_combos/widgets/drug_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DCPopup extends PopupRoute {
  final Widget child;

  DCPopup({this.child});

  @override
  Color get barrierColor => Colors.white.withAlpha(100);

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => '';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: DCDimens.paddingBig),
            child: child,
            ),
          );
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}

class SelectedDrugNotifier extends ChangeNotifier {
  DrugCategory _category;

  DrugCategory set(category) {
    _category = category;
    notifyListeners();
  }

  DrugCategory get category => _category;
}

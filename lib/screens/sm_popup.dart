import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substance_mix/model/substance_category.dart';
import 'package:substance_mix/presets/sm_dimens.dart';

class SMPopup extends PopupRoute {
  final Widget child;

  SMPopup({this.child});

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
        padding: const EdgeInsets.symmetric(horizontal: SMDimens.paddingBig),
        child: child,
      ),
    );
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}

class SelectedSubstanceNotifier extends ChangeNotifier {
  SubstanceCategory _category;

  void set(SubstanceCategory category) {
    _category = category;
    notifyListeners();
  }

  SubstanceCategory get category => _category;
}

import 'dart:ui';

import 'package:drug_combos/dc_bloc.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:drug_combos/widgets/drug_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DCPickerPopup extends PopupRoute{
  final DrugInputType type;
  DCPickerPopup(this.type);

  @override
  Color get barrierColor => Colors.white.withAlpha(100);

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => '';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  DCDimens.paddingBig),
      child: Column(
        children: [
          SizedBox(height: 100,),
          DrugInput(label: 'Choose drug category:', selected: true, content: 'Choose',),
          SizedBox(height: 15,),
          Expanded(
            child: ListView.builder(
              itemCount: DrugCategory.all.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: DCCard(child: Text(DrugCategory.all[index].name, style: DCTextStyles.display1,),),
                );
              },
            ),
          )
        ],

      ),
      ),
    );
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 100);

}
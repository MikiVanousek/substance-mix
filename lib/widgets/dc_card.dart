import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:flutter/cupertino.dart';

class DCCard extends StatelessWidget{
  final Widget child;
  final double height;

  const DCCard({this.height = DCDimens.cardHeight, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DCColors.primary,
        border: Border.all(color: DCColors.accent, width: 1),
        borderRadius: BorderRadius.circular(DCDimens.radius),
      ),
      height: height,
      child: child,
    );
  }

}
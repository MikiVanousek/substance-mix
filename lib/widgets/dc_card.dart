import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:flutter/cupertino.dart';

class DCCard extends StatelessWidget{
  final Widget child;
  final double height;
  final Color color;

  const DCCard({this.height = DCDimens.cardHeight, this.child, this.color = DCColors.primary});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: DCColors.accent, width: 1),
        borderRadius: BorderRadius.circular(DCDimens.radius),
      ),
      height: height,
      padding: EdgeInsets.symmetric(horizontal: DCDimens.paddingHorizontalSmall),
      alignment: Alignment.centerLeft,
      child: child,
    );
  }

}
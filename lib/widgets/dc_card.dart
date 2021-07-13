import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:flutter/cupertino.dart';

class DCCard extends StatelessWidget{
  final Widget child;
  final double height;
  final Color color;
  final void Function() onTap;
  final Alignment alignment;

  const DCCard({this.height = DCDimens.cardHeight, this.child, this.color = DCColors.primary, this.onTap, this.alignment = Alignment.centerLeft});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: DCColors.accent, width: 1),
          borderRadius: BorderRadius.circular(DCDimens.radius),
        ),
        height: height,
        padding: EdgeInsets.symmetric(horizontal: DCDimens.paddingHorizontalSmall),
        alignment: alignment,
        child: child,
      ),
    );
  }

}
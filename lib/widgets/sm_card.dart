import 'package:flutter/cupertino.dart';
import 'package:substance_mix/presets/sm_colors.dart';
import 'package:substance_mix/presets/sm_dimens.dart';

class SMCard extends StatelessWidget {
  final Widget child;
  final double height;
  final Color color;
  final void Function() onTap;
  final Alignment alignment;

  const SMCard(
      {this.height = SMDimens.cardHeight,
      this.child,
      this.color = SMColors.primary,
      this.onTap,
      this.alignment = Alignment.centerLeft});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: SMColors.accent, width: 1),
          borderRadius: BorderRadius.circular(SMDimens.radius),
        ),
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: SMDimens.paddingHorizontalSmall,
            vertical: SMDimens.paddingHorizontalSmall),
        alignment: alignment,
        child: child,
      ),
    );
  }
}

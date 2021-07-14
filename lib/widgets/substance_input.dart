import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:substance_mix/presets/sm_colors.dart';
import 'package:substance_mix/presets/sm_dimens.dart';
import 'package:substance_mix/presets/sm_icons.dart';
import 'package:substance_mix/presets/sm_text_styles.dart';
import 'package:substance_mix/widgets/sm_card.dart';

class SubstanceInput extends StatelessWidget {
  final String label;
  final bool selected;
  final String content;
  final void Function() onTap;

  const SubstanceInput(
      {this.label, this.content, this.onTap, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: SMTextStyles.displayBold,
        ),
        SizedBox(
          height: SMDimens.paddingHorizontalSmall,
        ),
        SMCard(
          onTap: onTap,
          color: selected ? SMColors.accent : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                content,
                style: selected
                    ? SMTextStyles.displayInverted
                    : SMTextStyles.display,
              ),
              Transform.rotate(
                angle: selected ? pi * 0.5 : 0,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Center(
                        child: SvgPicture.asset(
                      SMIcons.arrow,
                      width: SMDimens.iconSize,
                      height: SMDimens.iconSize,
                      color: selected ? SMColors.primary : SMColors.accent,
                    ))),
              )
            ],
          ),
        )
      ],
    );
  }
}

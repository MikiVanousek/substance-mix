import 'dart:math';

import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_icons.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class DrugInput extends StatelessWidget {
  final String label;
  final bool selected;
  final String content;
  final void Function() onTap;

  const DrugInput(
      {this.label, this.content, this.onTap, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: DCTextStyles.display,
        ),
        SizedBox(
          height: DCDimens.paddingHorizontalSmall,
        ),
        DCCard(
          onTap: onTap,
          color: selected ? DCColors.accent : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                content,
                style: selected
                    ? DCTextStyles.displayInverted
                    : DCTextStyles.display,
              ),
              Transform.rotate(
                angle: selected ? pi * 0.5 : 0,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Center(
                        child: SvgPicture.asset(
                      DCIcons.arrow,
                      width: DCDimens.iconSize,
                      height: DCDimens.iconSize,
                      color: selected ? DCColors.primary : DCColors.accent,
                    ))),
              )
            ],
          ),
        )
      ],
    );
  }
}

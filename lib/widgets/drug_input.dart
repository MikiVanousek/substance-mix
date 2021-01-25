import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_icons.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class DrugInput extends StatelessWidget {
  final String label;
  final String content;

  const DrugInput({this.label, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: DCTextStyles.display1,
        ),
        SizedBox(
          height: DCDimens.paddingHorizontalSmall,
        ),
        DCCard(
          child: Padding(
            padding:
                const EdgeInsets.only(left: DCDimens.paddingSmall),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  content,
                  style: DCTextStyles.display1,
                ),
                AspectRatio(
                    aspectRatio: 1,
                    child: Center(
                        child: SvgPicture.asset(
                      DCIcons.arrow,
                      width: DCDimens.iconSize,
                      height: DCDimens.iconSize,
                      color: DCColors.accent,
                    )))
              ],
            ),
          ),
        )
      ],
    );
  }
}

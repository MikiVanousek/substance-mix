import 'package:drug_combos/drugs/combo_results.dart';
import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_icons.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultOutput extends StatelessWidget {
  final ComboResult result;

  static const Map<ComboResult, String> resultStrings = {
    ComboResult.lrSynergy: 'Low Risk & Synergy',
    ComboResult.lrNoSynergy: 'Low Risk & No Synergy',
    ComboResult.lrDisharmony: 'Low Risk & Disharmony',
    ComboResult.beCautious: 'Be Cautious!',
    ComboResult.notSafe: 'Not Safe!',
    ComboResult.dangerous: 'Dangerous!',
    ComboResult.NaN: 'Please select two different drugs...',
  };

  const ResultOutput(this.result);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Result:',
        style: DCTextStyles.display1,
      ),
      SizedBox(
        height: DCDimens.paddingHorizontalSmall,
      ),
      AspectRatio(
        aspectRatio: 1,
        child: DCCard(
          color: DCColors.resultColors[result],
          height: double.infinity,
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              result == ComboResult.NaN ? Container() : RotatedBox(
                  quarterTurns: result == ComboResult.lrSynergy ? 2 : 0,
                  child: SvgPicture.asset(
                    DCIcons.resultIcons[result],
                    color: DCColors.primary,
                    width: 170,
                    height: 170,
                  )),
              Text(
                resultStrings[result],
                style: result == ComboResult.NaN
                    ? DCTextStyles.display1
                    : DCTextStyles.display1Inverted,
              ),
            ],
          )),
        ),
      )
    ]);
  }
}

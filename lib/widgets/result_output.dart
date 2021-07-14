import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:substance_mix/model/combo_results.dart';
import 'package:substance_mix/presets/sm_colors.dart';
import 'package:substance_mix/presets/sm_dimens.dart';
import 'package:substance_mix/presets/sm_icons.dart';
import 'package:substance_mix/presets/sm_text_styles.dart';
import 'package:substance_mix/widgets/sm_card.dart';

class ResultOutput extends StatelessWidget {
  final ComboResult result;

  static const Map<ComboResult, String> resultStrings = {
    ComboResult.lrSynergy: 'Low Risk & Synergy',
    ComboResult.lrNoSynergy: 'Low Risk & No Synergy',
    ComboResult.lrDisharmony: 'Low Risk & Disharmony',
    ComboResult.beCautious: 'Be Cautious!',
    ComboResult.notSafe: 'Not Safe!',
    ComboResult.dangerous: 'Dangerous!',
    ComboResult.NaN: 'Please select two different substances...',
  };

  const ResultOutput(this.result);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Result:',
        style: SMTextStyles.displayBold,
      ),
      SizedBox(
        height: SMDimens.paddingHorizontalSmall,
      ),
      AspectRatio(
        aspectRatio: 1,
        child: SMCard(
          color: SMColors.resultColors[result],
          height: double.infinity,
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              result == ComboResult.NaN
                  ? Container()
                  : RotatedBox(
                      quarterTurns: result == ComboResult.lrSynergy ? 2 : 0,
                      child: SvgPicture.asset(
                        SMIcons.resultIcons[result],
                        color: SMColors.primary,
                        width: 170,
                        height: 170,
                      )),
              Text(
                resultStrings[result],
                style: result == ComboResult.NaN
                    ? SMTextStyles.display
                    : SMTextStyles.displayInverted,
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ),
      )
    ]);
  }
}

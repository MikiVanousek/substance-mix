import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:flutter/cupertino.dart';

class ResultOutput extends StatelessWidget {
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
      AspectRatio(aspectRatio: 1, child: DCCard(
        height: double.infinity,
        child: Center(
          child: Text('Please choose both drugs...', style: DCTextStyles.display1,)
        ),
      ),)
    ]);
  }
}

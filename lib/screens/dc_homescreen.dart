import 'package:drug_combos/bloc/dc_bloc.dart';
import 'package:drug_combos/bloc/dc_legal_bloc.dart';
import 'package:drug_combos/bloc/drug_selection_state.dart';
import 'package:drug_combos/dc_router.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_icons.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_scaffold.dart';
import 'package:drug_combos/widgets/drug_input.dart';
import 'package:drug_combos/widgets/result_output.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DCHomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<DCLegalBloc, DCLegalState>(
      listener: (BuildContext c, DCLegalState state) {
        if (state == DCLegalState.notAccepted)
          Navigator.of(context).pushNamed(DCRouter.routeLegalPopup);
        else {
          debugPrint('Legal disclaimer is accepted...');
        }
      },
      child: DCScaffold(
        appbar: Center(
          child: RichText(
              text: TextSpan(style: DCTextStyles.title, children: [
            TextSpan(text: ' Substance'),
            TextSpan(
                text: 'Mix', style: TextStyle(fontWeight: FontWeight.bold)),
          ])),
        ),
        children: [
          SizedBox(
            height: DCDimens.paddingHorizontalBig,
          ),
          BlocBuilder<DCBloc, DrugSelectionState>(
            builder: (_, state) => DrugInput(
              label: 'First Drug:',
              content: state?.firstDrug?.name ?? 'Choose...',
              onTap: () => Navigator.of(context)
                  .pushNamed(DCRouter.routeFirstDrugPickerScreen),
            ),
          ),
          SizedBox(
            height: DCDimens.paddingHorizontalBig,
          ),
          BlocBuilder<DCBloc, DrugSelectionState>(
            builder: (_, state) => DrugInput(
              label: 'Second Drug:',
              content: state?.secondDrug?.name ?? 'Choose...',
              onTap: () => Navigator.of(context)
                  .pushNamed(DCRouter.routeSecondDrugPickerScreen),
            ),
          ),
          SizedBox(
            height: DCDimens.paddingHorizontalBig,
          ),
          Expanded(
              child: BlocBuilder<DCBloc, DrugSelectionState>(
                  builder: (_, state) => ResultOutput(state.result))),
          SizedBox(
            height: 64,
          ),
        ],

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

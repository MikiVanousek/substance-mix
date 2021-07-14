import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:substance_mix/bloc/sm_bloc.dart';
import 'package:substance_mix/bloc/sm_legal_bloc.dart';
import 'package:substance_mix/bloc/substance_selection_state.dart';
import 'package:substance_mix/presets/sm_dimens.dart';
import 'package:substance_mix/presets/sm_text_styles.dart';
import 'package:substance_mix/sm_router.dart';
import 'package:substance_mix/widgets/result_output.dart';
import 'package:substance_mix/widgets/sm_scaffold.dart';
import 'package:substance_mix/widgets/substance_input.dart';

class SMHomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SMLegalBloc, SMLegalState>(
      listener: (BuildContext c, SMLegalState state) {
        if (state == SMLegalState.notAccepted)
          Navigator.of(context).pushNamed(SMRouter.routeLegalPopup);
        else {
          debugPrint('Legal disclaimer is accepted...');
        }
      },
      child: SMScaffold(
        appbar: Center(
          child: RichText(
              text: TextSpan(style: SMTextStyles.title, children: [
            TextSpan(text: ' Substance'),
            TextSpan(
                text: 'Mix', style: TextStyle(fontWeight: FontWeight.bold)),
          ])),
        ),
        children: [
          SizedBox(
            height: SMDimens.paddingHorizontalBig,
          ),
          BlocBuilder<SMBloc, SubstanceSelectionState>(
            builder: (_, state) => SubstanceInput(
              label: 'First Substance:',
              content: state?.firstSubstance?.name ?? 'Choose...',
              onTap: () => Navigator.of(context)
                  .pushNamed(SMRouter.routeFirstSubstancePickerScreen),
            ),
          ),
          SizedBox(
            height: SMDimens.paddingHorizontalBig,
          ),
          BlocBuilder<SMBloc, SubstanceSelectionState>(
            builder: (_, state) => SubstanceInput(
              label: 'Second Substance:',
              content: state?.secondSubstance?.name ?? 'Choose...',
              onTap: () => Navigator.of(context)
                  .pushNamed(SMRouter.routeSecondSubstancePickerScreen),
            ),
          ),
          SizedBox(
            height: SMDimens.paddingHorizontalBig,
          ),
          Expanded(
              child: BlocBuilder<SMBloc, SubstanceSelectionState>(
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

import 'package:drug_combos/bloc/dc_legal_bloc.dart';
import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DCLegalPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => BlocProvider.of<DCLegalBloc>(context).setAccepted(),
        child: Padding(
          padding: EdgeInsets.all(DCDimens.paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Terms & Conditions',
                style: DCTextStyles.display
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: DCDimens.paddingHorizontalSmall,
              ),
              DCCard(
                child: Text('You give up all your rights...', style: DCTextStyles.termsAndConditions,),
              ),
              SizedBox(
                height: DCDimens.paddingHorizontalSmall,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: DCCard(
                          alignment: Alignment.center,
                          child: Text(
                            'Reject',
                            style: DCTextStyles.display,
                          ))),
                  SizedBox(
                    width: DCDimens.paddingSmall,
                  ),
                  Expanded(child: DCCard(
                      color: DCColors.accent,
                      alignment: Alignment.center,
                      child: Text('Accept', style: DCTextStyles.displayInverted,)
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

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
  Widget build(BuildContext context) => WillPopScope(
    onWillPop: () async => false,
    child: Padding(
          padding: EdgeInsets.symmetric(horizontal: DCDimens.paddingHorizontalSmall),
          child: SingleChildScrollView(
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Text(
                    'Terms & Conditions',
                    style: DCTextStyles.display.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: DCDimens.paddingSmall,
                  ),
                  IntrinsicHeight(
                    child: DCCard(
                      height: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'By using this application you agree to the Terms & Conditions listed below.',
                            style: DCTextStyles.termsAndConditions,
                          ),
                          SizedBox(height: DCDimens.paddingSmall,),
                          Text(
                              'The author of this application encourages you to use neither legal nor illegal substances. This application was created for harm reduction purposes. If you decide to use a substance, you do so at your own risk and you are solely responsible for your actions.',
                              style: DCTextStyles.termsAndConditions,
                          ),
                          SizedBox(height: DCDimens.paddingSmall,),
                          Text(
                              'This app has been created with the help of Tripsit.me Combination Chart. All of the information provided is meant as a quick reference. While the developer believes all of the information to be correct, it does not necessarily have to be and further research should always be done.',
                            style: DCTextStyles.termsAndConditions,
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: DCDimens.paddingSmall,
                  ),
                  BlocListener<DCLegalBloc, DCLegalState>(
                    listener: (context, state) {
                      if (state == DCLegalState.accepted) {
                        Navigator.pop(context);
                        debugPrint('T&C were just agreed to');
                      }
                    },
                    child: DCCard(
                        onTap: () {
                          BlocProvider.of<DCLegalBloc>(context).setAccepted();
                        },
                        color: DCColors.accent,
                        alignment: Alignment.center,
                        child: Text(
                          'Accept',
                          style: DCTextStyles.displayInverted,
                        )),
                  ),
                  SizedBox(height: 80,),
                ],
              ),
            ),
          ),
        ),
  );
}

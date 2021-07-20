import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:substance_mix/bloc/sm_legal_bloc.dart';
import 'package:substance_mix/presets/sm_colors.dart';
import 'package:substance_mix/presets/sm_dimens.dart';
import 'package:substance_mix/presets/sm_text_styles.dart';
import 'package:substance_mix/widgets/sm_card.dart';

class SMLegalPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SMDimens.paddingHorizontalSmall),
          child: SingleChildScrollView(
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Terms & Conditions',
                    style: SMTextStyles.display
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: SMDimens.paddingSmall,
                  ),
                  IntrinsicHeight(
                    child: SMCard(
                      height: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'By using this application you agree to the Terms & Conditions listed below.',
                            style: SMTextStyles.termsAndConditions,
                          ),
                          SizedBox(
                            height: SMDimens.paddingSmall,
                          ),
                          Text(
                            'The author of this application does not encourage you to use legal or illegal substances. This application was created for harm reduction purposes. If you decide to use a substance, you do so at your own risk and you are solely responsible for your actions.',
                            style: SMTextStyles.termsAndConditions,
                          ),
                          SizedBox(
                            height: SMDimens.paddingSmall,
                          ),
                          Text(
                            'All the data in this app is sourced from TripSit (see combo.tripsit.me). All of the information provided is meant as a quick reference. Further research must always be done!',
                            style: SMTextStyles.termsAndConditions,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SMDimens.paddingSmall,
                  ),
                  BlocListener<SMLegalBloc, SMLegalState>(
                    listener: (context, state) {
                      if (state == SMLegalState.accepted) {
                        Navigator.pop(context);
                        debugPrint('T&C were just agreed to');
                      }
                    },
                    child: SMCard(
                        onTap: () {
                          BlocProvider.of<SMLegalBloc>(context).setAccepted();
                        },
                        color: SMColors.accent,
                        alignment: Alignment.center,
                        child: Text(
                          'Accept',
                          style: SMTextStyles.displayInverted,
                        )),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

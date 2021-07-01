import 'package:drug_combos/bloc/dc_legal_bloc.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DCLegalPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => BlocProvider.of<DCLegalBloc>(context).setAccepted(),
    child: Center(
          child: Column(
            children: [
              Text(
                'Tap to give up rights',
                style: DCTextStyles.display1,
              ),
            ],
          ),
        ),
  );
}

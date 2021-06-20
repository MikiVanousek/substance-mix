import 'dart:ui';

import 'package:drug_combos/bloc/dc_bloc.dart';
import 'package:drug_combos/bloc/picker_bloc.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_card.dart';
import 'package:drug_combos/widgets/drug_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DCPickerPopup extends PopupRoute {
  final DrugInputType type;

  DCPickerPopup(this.type);

  @override
  Color get barrierColor => Colors.white.withAlpha(100);

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => '';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return BlocProvider<PickerBloc>(
      create: (_) => PickerBloc(),
      child: BlocListener<PickerBloc, PickerState>(
        listener: (_, state) {
          if (state.selectedDrug != null) {
            BlocProvider.of<DCBloc>(context)
                .add(DrugSelectedEvent(state.selectedDrug, type));
            Navigator.of(context).pop();
          }
        },
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: DCDimens.paddingBig),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                BlocBuilder<PickerBloc, PickerState>(
                    builder: (context, state) => DrugInput(
                          label: state.selectedCategory == null
                              ? 'Choose drug category:'
                              : 'Choose drug:',
                          selected: true,
                          content: state.selectedCategory?.name ?? 'Choose...',
                          onTap: () {
                            if (state.selectedCategory == null) {
                              Navigator.pop(context);
                            } else {
                              BlocProvider.of<PickerBloc>(context).reset();
                            }
                          },
                        )),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: BlocBuilder<PickerBloc, PickerState>(
                    builder: (_, state) => ListView.builder(
                      itemCount: state.selectableObjects.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: DCCard(
                            onTap: () => BlocProvider.of<PickerBloc>(context)
                                .itemSelected(index),
                            child: Text(
                              state.selectableObjects[index].toString(),
                              style: DCTextStyles.display1,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 100);
}

class SelectedDrugNotifier extends ChangeNotifier {
  DrugCategory _category;

  DrugCategory set(category) {
    _category = category;
    notifyListeners();
  }

  DrugCategory get category => _category;
}

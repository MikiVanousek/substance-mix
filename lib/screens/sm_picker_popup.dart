import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:substance_mix/bloc/picker_bloc.dart';
import 'package:substance_mix/bloc/sm_bloc.dart';
import 'package:substance_mix/model/substance_category.dart';
import 'package:substance_mix/presets/sm_text_styles.dart';
import 'package:substance_mix/widgets/sm_card.dart';
import 'package:substance_mix/widgets/substance_input.dart';

class SMPicker extends StatelessWidget {
  final SubstanceInputType type;

  SMPicker(this.type);
  @override
  Widget build(BuildContext context) => BlocProvider<PickerBloc>(
        create: (_) => PickerBloc(),
        child: BlocListener<PickerBloc, PickerState>(
          listener: (_, state) {
            if (state.selectedSubstance != null) {
              BlocProvider.of<SMBloc>(context)
                  .add(SubstanceSelectedEvent(state.selectedSubstance, type));
              Navigator.of(context).pop();
            }
          },
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              BlocBuilder<PickerBloc, PickerState>(
                  builder: (context, state) => SubstanceInput(
                        label: state.selectedCategory == null
                            ? 'Choose substance category:'
                            : 'Choose substance:',
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
                        child: SMCard(
                          onTap: () => BlocProvider.of<PickerBloc>(context)
                              .itemSelected(index),
                          child: Text(
                            state.selectableObjects[index].toString(),
                            style: SMTextStyles.display,
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
      );
}

class SelectedSubstanceNotifier extends ChangeNotifier {
  SubstanceCategory _category;

  void set(SubstanceCategory category) {
    _category = category;
    notifyListeners();
  }

  SubstanceCategory get category => _category;
}

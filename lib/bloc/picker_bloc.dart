import 'package:drug_combos/drugs/drug.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickerBloc extends Cubit<PickerState> {
  static const initialState = PickerState(DrugCategory.allCategories);

  PickerBloc() : super(initialState);

  void itemSelected(int id) {
    if (state.selectedCategory == null) {
      DrugCategory category = DrugCategory.allCategories[id];
      emit(PickerState(category.drugs, selectedCategory: category));
    } else {
      Drug selectedDrug = state.selectedCategory.drugs[id];
      emit(PickerState([],
          selectedCategory: state.selectedCategory,
          selectedDrug: selectedDrug));
    }
  }

  void reset() {
    emit(initialState);
  }
}

class PickerState {
  final List<Object> selectableObjects;
  final DrugCategory selectedCategory;
  final Drug selectedDrug;

  const PickerState(this.selectableObjects,
      {this.selectedCategory, this.selectedDrug});
}

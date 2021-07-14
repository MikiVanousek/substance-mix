import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:substance_mix/model/substance.dart';
import 'package:substance_mix/model/substance_category.dart';

class PickerBloc extends Cubit<PickerState> {
  static const initialState = PickerState(SubstanceCategory.allCategories);

  PickerBloc() : super(initialState);

  void itemSelected(int id) {
    if (state.selectedCategory == null) {
      SubstanceCategory category = SubstanceCategory.allCategories[id];
      emit(PickerState(category.substances, selectedCategory: category));
    } else {
      Substance selectedSubstance = state.selectedCategory.substances[id];
      emit(PickerState([],
          selectedCategory: state.selectedCategory,
          selectedSubstance: selectedSubstance));
    }
  }

  void reset() {
    emit(initialState);
  }
}

class PickerState {
  final List<Object> selectableObjects;
  final SubstanceCategory selectedCategory;
  final Substance selectedSubstance;

  const PickerState(this.selectableObjects,
      {this.selectedCategory, this.selectedSubstance});
}

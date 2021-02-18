import 'package:drug_combos/drugs/drug.dart';
import 'package:drug_combos/drugs/drug_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickerBloc extends Bloc<ItemSelectedEvent, PickerState>{
  PickerBloc() : super(PickerState(DrugCategory.allCategories));


  @override
  Stream<PickerState> mapEventToState(ItemSelectedEvent event) async* {
    if(state.selectedCategory == null){
      DrugCategory category = DrugCategory.allCategories[event.itemId];
      yield PickerState(category.drugs, selectedCategory: category);
    }
    else{
      Drug selectedDrug = state.selectedCategory.drugs[event.itemId];
      yield PickerState([], selectedCategory: state.selectedCategory, selectedDrug: selectedDrug);
    }
  }

}

class PickerState {
  final List<Object> selectableObjects;
  final DrugCategory selectedCategory;
  final Drug selectedDrug;

  PickerState(this.selectableObjects, {this.selectedCategory, this.selectedDrug});
}

class ItemSelectedEvent{
  final int itemId;

  ItemSelectedEvent(this.itemId);
}
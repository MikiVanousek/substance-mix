import 'package:drug_combos/drugs/combiner.dart';
import 'package:drug_combos/drugs/combo_results.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiver/core.dart';

import 'drug_selection_state.dart';

class DCBloc extends Bloc<DrugSelectedEvent, DrugSelectionState> {
  DCBloc() : super(DrugSelectionState());

  @override
  Stream<DrugSelectionState> mapEventToState(DrugSelectedEvent event) async* {
    if (event.type == DrugInputType.first) {
      yield DrugSelectionState(
        firstDrug: event.drug, secondDrug: state.secondDrug);
    } else if (event.type == DrugInputType.second) {
      yield DrugSelectionState(
          firstDrug: state.firstDrug, secondDrug: event.drug);
    } else {
      throw UnimplementedError('An unsupported event has been added.');
    }
  }
}

class DrugSelectedEvent {
  final Drug drug;
  final DrugInputType type;

  DrugSelectedEvent(this.drug, this.type);
}

enum DrugInputType { first, second }


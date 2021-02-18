import 'package:drug_combos/drugs/combiner.dart';
import 'package:drug_combos/drugs/combo_results.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiver/core.dart';

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

class DrugSelectionState {
  final Drug firstDrug;
  final Drug secondDrug;
  final ComboResult result;

  DrugSelectionState({this.firstDrug, this.secondDrug})
      : result = Combiner.combine(firstDrug, secondDrug);

  @override
  String toString() => 'First drug: $firstDrug \t Second drug: $secondDrug';

  @override
  bool operator ==(Object other) {
    return other is DrugSelectionState &&
        other.firstDrug == firstDrug &&
        other.secondDrug == secondDrug;
  }

  @override
  int get hashCode => hash2(firstDrug, secondDrug);
}

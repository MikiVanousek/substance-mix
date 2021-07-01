import 'package:drug_combos/drugs/combiner.dart';
import 'package:drug_combos/drugs/combo_results.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:quiver/core.dart';

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
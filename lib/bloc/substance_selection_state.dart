import 'package:quiver/core.dart';
import 'package:substance_mix/model/combiner.dart';
import 'package:substance_mix/model/combo_results.dart';
import 'package:substance_mix/model/substance.dart';

class SubstanceSelectionState {
  final Substance firstSubstance;
  final Substance secondSubstance;
  final ComboResult result;

  SubstanceSelectionState({this.firstSubstance, this.secondSubstance})
      : result = Combiner.mix(firstSubstance, secondSubstance);

  @override
  String toString() =>
      'First substance: $firstSubstance \t Second substance: $secondSubstance';

  @override
  bool operator ==(Object other) {
    return other is SubstanceSelectionState &&
        other.firstSubstance == firstSubstance &&
        other.secondSubstance == secondSubstance;
  }

  @override
  int get hashCode => hash2(firstSubstance, secondSubstance);
}

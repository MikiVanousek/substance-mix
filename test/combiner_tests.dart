import 'package:flutter_test/flutter_test.dart';
import 'package:substance_mix/model/combiner.dart';
import 'package:substance_mix/model/combo_results.dart';
import 'package:substance_mix/model/substance.dart';

void main() {
  test('Testing basic combiner functionality...', () {
    int numberOfSubstances = Substance.allSubstances.length;
    for (int i = 0; i < numberOfSubstances - 1; i++) {
      expect(Combiner.combos[i].length, numberOfSubstances - i - 1,
          reason:
              'First row should be numberOfSubstances long, all other 1 shorter than the one before them.');
      expect(
          Combiner.mix(Substance.allSubstances[i], Substance.allSubstances[i]),
          ComboResult.NaN,
          reason: 'All model should return NaN when combined with themselves.');
    }
  });

  test('Testing some concrete combinations are accurate...', () {
    expect(
        Combiner.mix(Substance.nitrous, Substance.lsd), ComboResult.lrSynergy);
    expect(Combiner.mix(Substance.nitrous, Substance.cannabis),
        ComboResult.lrSynergy);
    expect(
        Combiner.mix(Substance.nitrous, Substance.dmt), ComboResult.lrSynergy);
    expect(Combiner.mix(Substance.nitrous, Substance.mushrooms),
        ComboResult.lrSynergy);

    expect(Combiner.mix(Substance.lsd, Substance.cannabis),
        ComboResult.beCautious);
    expect(Combiner.mix(Substance.lsd, Substance.dmt), ComboResult.lrSynergy);
    expect(Combiner.mix(Substance.lsd, Substance.mushrooms),
        ComboResult.lrSynergy);
  });
}

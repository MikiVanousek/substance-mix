import 'package:drug_combos/drugs/combiner.dart';
import 'package:drug_combos/drugs/combo_results.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testing basic combiner functionality...', () {
    int numberOfDrugs = Drug.allDrugs.length;
    for (int i = 0; i < numberOfDrugs - 1; i++) {
      expect(Combiner.combos[i].length, numberOfDrugs - i - 1,
          reason:
          'First row should be numberOfDrugs long, all other 1 shorter than the one before them.');
      expect(Combiner.combine(Drug.allDrugs[i], Drug.allDrugs[i]), ComboResult.NaN, reason: 'All drugs should return NaN when combined with themselves.');
    }

  });

  test('Testing some concrete combinations are accurate...', () {
    expect(Combiner.combine(Drug.nitrous, Drug.lsd), ComboResult.lrSynergy);
    expect(Combiner.combine(Drug.nitrous, Drug.cannabis), ComboResult.lrSynergy);
    expect(Combiner.combine(Drug.nitrous, Drug.dmt), ComboResult.lrSynergy);
    expect(Combiner.combine(Drug.nitrous, Drug.mushrooms), ComboResult.lrSynergy);

    expect(Combiner.combine(Drug.lsd, Drug.cannabis), ComboResult.beCautious);
    expect(Combiner.combine(Drug.lsd, Drug.dmt), ComboResult.lrSynergy);
    expect(Combiner.combine(Drug.lsd, Drug.mushrooms), ComboResult.lrSynergy);
  });
}

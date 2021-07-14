import 'combo_results.dart';
import 'substance.dart';

class Combiner {
  static ComboResult mix(Substance firstSubstance, Substance secondSubstance) {
    int substance1;
    int substance2;

    if (firstSubstance == null ||
        secondSubstance == null ||
        firstSubstance == secondSubstance) {
      return ComboResult.NaN;
    } else if (firstSubstance.id < secondSubstance.id) {
      substance1 = firstSubstance.id;
      substance2 = secondSubstance.id;
    } else {
      substance2 = firstSubstance.id;
      substance1 = secondSubstance.id;
    }
    int combo = combos[substance1][substance2 - substance1 - 1];
    return results[combo];
  }

  static const List<List<int>> combos = [
    [
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      3,
      0,
      0,
      0,
      0,
      3,
      0,
      3,
      1,
      2,
      2,
      1,
      4,
      2,
      2,
      2,
    ], //LSD
    [
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      3,
      0,
      0,
      0,
      0,
      3,
      0,
      3,
      1,
      2,
      2,
      1,
      4,
      2,
      0,
      2,
    ], //mushrooms
    [
      0,
      0,
      0,
      0,
      0,
      0,
      3,
      0,
      0,
      0,
      0,
      3,
      0,
      3,
      1,
      2,
      2,
      1,
      4,
      2,
      0,
      2,
    ], //dmt,
    [
      3,
      3,
      3,
      3,
      3,
      3,
      0,
      0,
      0,
      0,
      3,
      0,
      3,
      1,
      2,
      2,
      1,
      4,
      2,
      3,
      2,
    ], //mescaline
    [
      3,
      3,
      3,
      3,
      3,
      0,
      3,
      4,
      0,
      4,
      3,
      4,
      3,
      2,
      2,
      1,
      4,
      2,
      3,
      2,
    ], //dox
    [
      3,
      3,
      3,
      3,
      0,
      3,
      4,
      0,
      4,
      3,
      4,
      3,
      2,
      2,
      1,
      4,
      2,
      3,
      2,
    ], //nbomes
    [
      3,
      3,
      3,
      0,
      0,
      0,
      0,
      3,
      0,
      3,
      1,
      2,
      2,
      1,
      4,
      2,
      3,
      2,
    ], //twoCx
    [
      3,
      3,
      0,
      3,
      4,
      0,
      4,
      3,
      4,
      1,
      2,
      2,
      1,
      4,
      2,
      3,
      2,
    ], //twoCTx
    [
      3,
      0,
      0,
      4,
      0,
      4,
      3,
      4,
      1,
      2,
      2,
      1,
      4,
      2,
      5,
      2,
    ], //fiveMeOxxT
    [
      0,
      0,
      0,
      0,
      3,
      0,
      3,
      1,
      0,
      0,
      0,
      0,
      2,
      0,
      1,
    ], //cannabis
    [
      0,
      1,
      0,
      3,
      0,
      3,
      1,
      5,
      5,
      5,
      5,
      3,
      3,
      1,
    ], //ketamine
    [
      1,
      0,
      3,
      3,
      3,
      1,
      5,
      5,
      5,
      5,
      3,
      4,
      3,
    ], //mxe
    [
      0,
      4,
      5,
      4,
      1,
      5,
      5,
      5,
      5,
      3,
      5,
      5,
    ], //dxm
    [
      0,
      0,
      0,
      1,
      3,
      3,
      3,
      3,
      2,
      1,
      1,
    ], //nitrous
    [
      0,
      3,
      3,
      3,
      3,
      3,
      5,
      2,
      5,
      1,
    ], //amphetamines
    [
      3,
      3,
      3,
      3,
      1,
      5,
      2,
      5,
      2,
    ], //mdma
    [
      3,
      4,
      3,
      5,
      5,
      2,
      5,
      1,
    ], //cocaine
    [
      1,
      1,
      1,
      1,
      2,
      1,
      1,
    ], //cafine
    [
      5,
      5,
      5,
      5,
      4,
      3,
    ], //alcohol
    [
      5,
      5,
      5,
      0,
      1,
    ], //ghb
    [
      5,
      5,
      3,
      1,
    ], //opioids
    [
      5,
      5,
      5,
    ], //tramadol
    [
      0,
      1,
    ], //benzodiazepines
    [
      5,
    ], //maois
  ];

  /*
    static const List<Substance> all = [
    lsd,
    mushrooms,
    dmt,
    cannabis,
    ketamine,
    mxe,
    dxm,
    nitrous
  ];
   */
  static const Map<int, ComboResult> results = {
    0: ComboResult.lrSynergy,
    1: ComboResult.lrNoSynergy,
    2: ComboResult.lrDisharmony,
    3: ComboResult.beCautious,
    4: ComboResult.notSafe,
    5: ComboResult.dangerous
  };
}

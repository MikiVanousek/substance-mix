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
    return combos[substance1][substance2 - substance1 - 1];
  }

  static const List<List<ComboResult>> combos = [
    [
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
    ], //LSD
    [
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.lrSynergy,
      ComboResult.lrDisharmony,
    ], //mushrooms
    [
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.lrSynergy,
      ComboResult.lrDisharmony,
    ], //dmt,
    [
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
    ], //mescaline
    [
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.lrSynergy,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
    ], //dox
    [
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.lrSynergy,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
    ], //nbomes
    [
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
    ], //twoCx
    [
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.lrSynergy,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
    ], //twoCTx
    [
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.notSafe,
      ComboResult.lrSynergy,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.notSafe,
      ComboResult.lrDisharmony,
      ComboResult.dangerous,
      ComboResult.lrDisharmony,
    ], //fiveMeOxxT
    [
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrSynergy,
      ComboResult.lrNoSynergy,
    ], //cannabis
    [
      ComboResult.lrSynergy,
      ComboResult.lrNoSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
    ], //ketamine
    [
      ComboResult.lrNoSynergy,
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.beCautious,
    ], //mxe
    [
      ComboResult.lrSynergy,
      ComboResult.notSafe,
      ComboResult.dangerous,
      ComboResult.notSafe,
      ComboResult.lrNoSynergy,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.beCautious,
      ComboResult.dangerous,
      ComboResult.dangerous,
    ], //dxm
    [
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrSynergy,
      ComboResult.lrNoSynergy,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.lrNoSynergy,
    ], //nitrous
    [
      ComboResult.lrSynergy,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.dangerous,
      ComboResult.lrDisharmony,
      ComboResult.dangerous,
      ComboResult.lrNoSynergy,
    ], //amphetamines
    [
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
      ComboResult.dangerous,
      ComboResult.lrDisharmony,
      ComboResult.dangerous,
      ComboResult.lrDisharmony,
    ], //mdma
    [
      ComboResult.beCautious,
      ComboResult.notSafe,
      ComboResult.beCautious,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.lrDisharmony,
      ComboResult.dangerous,
      ComboResult.lrNoSynergy,
    ], //cocaine
    [
      ComboResult.lrNoSynergy,
      ComboResult.lrNoSynergy,
      ComboResult.lrNoSynergy,
      ComboResult.lrNoSynergy,
      ComboResult.lrDisharmony,
      ComboResult.lrNoSynergy,
      ComboResult.lrNoSynergy,
    ], //cafine
    [
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.notSafe,
      ComboResult.beCautious,
    ], //alcohol
    [
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.lrSynergy,
      ComboResult.lrNoSynergy,
    ], //ghb
    [
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.beCautious,
      ComboResult.lrNoSynergy,
    ], //opioids
    [
      ComboResult.dangerous,
      ComboResult.dangerous,
      ComboResult.dangerous,
    ], //tramadol
    [
      ComboResult.lrSynergy,
      ComboResult.lrNoSynergy,
    ], //benzodiazepines
    [
      ComboResult.dangerous,
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
}

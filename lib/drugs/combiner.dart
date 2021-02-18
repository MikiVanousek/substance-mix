import 'combo_results.dart';
import 'drug.dart';

class Combiner{
  static ComboResult combine(Drug firstDrug, Drug secondDrug){
    int drug1;
    int drug2;

    if(firstDrug == null || secondDrug == null || firstDrug == secondDrug) {
      return ComboResult.NaN;
    }
    else if(firstDrug.id < secondDrug.id){
      drug1 = firstDrug.id;
      drug2 = secondDrug.id;
    }
    else{
      drug2 = firstDrug.id;
      drug1 = secondDrug.id;
    }
    int combo = combos[drug1][drug2 - drug1 - 1];
    return results[combo];
  }
  static const List<List<int>> combos =
  [
       [0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 3, 1, 2, 2, 1, 4, 2, 2, 2,], //LSD
          [0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 3, 1, 2, 2, 1, 4, 2, 0, 2,], //mushrooms
             [0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 3, 1, 2, 2, 1, 4, 2, 0, 2,], //dmt,
                [3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 3, 0, 3, 1, 2, 2, 1, 4, 2, 3, 2,], //mescaline
                   [3, 3, 3, 3, 3, 0, 3, 4, 0, 4, 3, 4, 3, 2, 2, 1, 4, 2, 3, 2,], //dox
                      [3, 3, 3, 3, 0, 3, 4, 0, 4, 3, 4, 3, 2, 2, 1, 4, 2, 3, 2,], //nbomes
                         [3, 3, 3, 0, 0, 0, 0, 3, 0, 3, 1, 2, 2, 1, 4, 2, 3, 2,], //twoCx
                            [3, 3, 0, 3, 4, 0, 4, 3, 4, 1, 2, 2, 1, 4, 2, 3, 2,], //twoCTx
                               [3, 0, 0, 4, 0, 4, 3, 4, 1, 2, 2, 1, 4, 2, 5, 2,], //fiveMeOxxT
                                  [0, 0, 0, 0, 3, 0, 3, 1, 0, 0, 0, 0, 2, 0, 1,], //cannabis
                                     [0, 1, 0, 3, 0, 3, 1, 5, 5, 5, 5, 3, 3, 1,], //ketamine
                                        [1, 0, 3, 3, 3, 1, 5, 5, 5, 5, 3, 4, 3,], //mxe
                                           [0, 4, 5, 4, 1, 5, 5, 5, 5, 3, 5, 5,], //dxm
                                              [0, 0, 0, 1, 3, 3, 3, 3, 2, 1, 1,], //nitrous
                                                 [0, 3, 3, 3, 3, 3, 5, 2, 5, 1,], //amphetamines
                                                    [3, 3, 3, 3, 1, 5, 2, 5, 2,], //mdma
                                                       [3, 4, 3, 5, 5, 2, 5, 1,], //cocaine
                                                          [1, 1, 1, 1, 2, 1, 1,], //cafine
                                                             [5, 5, 5, 5, 4, 3,], //alcohol
                                                                [5, 5, 5, 0, 1,], //ghb
                                                                   [5, 5, 3, 1,], //opioids
                                                                      [5, 5, 5,], //tramadol
                                                                         [0, 1,], //benzodiazepines
                                                                            [5,], //maois
  ];

  /*
    static const List<Drug> all = [
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


import 'combo_results.dart';
import 'drug.dart';

class Combiner{
  static ComboResult combine(Drug firstDrug, Drug secondDrug){
    int drug1;
    int drug2;

    if(firstDrug == secondDrug) {
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
    //  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17
       [0, 0, 3, 0, 0, 0, 0,], //LSD
          [0, 3, 0, 0, 0, 0,], //mushrooms
             [3, 0, 0, 0, 0,], //dmt,
                [0, 0, 0, 0,], //cannabis
                   [0, 1, 0,], //ketamine
                      [1, 0,], //mxe
                         [0,]
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


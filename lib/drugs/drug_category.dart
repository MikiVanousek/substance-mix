import 'package:drug_combos/drugs/drug.dart';

class DrugCategory {
  final String name;
  final int id;
  final List<Drug> drugs;

  const DrugCategory(this.id, this.name, this.drugs);

  static const DrugCategory all = DrugCategory(0, 'All', Drug.allDrugs);

  static const DrugCategory psychedelics = DrugCategory(1, 'Psychedelics', [
    Drug.lsd,
    Drug.mushrooms,
    Drug.dmt,
    Drug.mescaline,
    Drug.dox,
    Drug.nbomes,
    Drug.twoCx,
    Drug.twoCTx,
    Drug.fiveMeOxxT,
    Drug.cannabis,
  ]);
  static const DrugCategory dissociatives = DrugCategory(2, 'Dissociatives', [
    Drug.ketamine,
    Drug.mxe,
    Drug.dxm,
    Drug.nitrous,
  ]);
  static const DrugCategory stimulants = DrugCategory(3, 'Stimulants', [
    Drug.amphetamines,
    Drug.mdma,
    Drug.cocaine,
    Drug.caffeine,
  ]);
  static const DrugCategory depresants = DrugCategory(4, 'Depresants', [
    Drug.alcohol,
    Drug.ghb,
    Drug.opioids,
    Drug.tramadol,
    Drug.benzodiazepines,
  ]);

  static const DrugCategory other = DrugCategory(5, 'Other', [
    Drug.maois,
    Drug.ssris,
  ]);

  static const List<DrugCategory> allCategories = [
    all,
    psychedelics,
    dissociatives,
    stimulants,
    depresants,
    other,

  ];

  @override
  String toString() => name;
}

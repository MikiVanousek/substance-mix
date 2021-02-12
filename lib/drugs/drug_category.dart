import 'package:drug_combos/drugs/drug.dart';

class DrugCategory {
  final String name;
  final int id;
  final List<Drug> drugs;

  const DrugCategory(this.name, this.id, this.drugs);

  static const DrugCategory psychedelics = DrugCategory('Psychedelics', 0, [
    Drug.lsd,
    Drug.mushrooms,
    Drug.dmt,
    Drug.cannabis,
  ]);
  static const DrugCategory dissociatives = DrugCategory('Dissociatives', 1, [
    Drug.ketamine,
    Drug.mxe,
    Drug.dxm,
    Drug.nitrous,
  ]);
  static const DrugCategory stimulants = DrugCategory('Stimulants', 2, []);
  static const DrugCategory depresants = DrugCategory('Depresants', 3, []);
  static const DrugCategory opioids = DrugCategory('Opioids', 4, []);

  static const List<DrugCategory> all = [
    psychedelics,
    dissociatives,
    stimulants,
    depresants,
    opioids,
  ];

  @override
  String toString() => name;
}

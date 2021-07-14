import 'package:substance_mix/model/substance.dart';

class SubstanceCategory {
  final String name;
  final int id;
  final List<Substance> substances;

  const SubstanceCategory(this.id, this.name, this.substances);

  static const SubstanceCategory all =
      SubstanceCategory(0, 'All', Substance.allSubstances);

  static const SubstanceCategory psychedelics =
      SubstanceCategory(1, 'Psychedelics', [
    Substance.lsd,
    Substance.mushrooms,
    Substance.dmt,
    Substance.mescaline,
    Substance.dox,
    Substance.nbomes,
    Substance.twoCx,
    Substance.twoCTx,
    Substance.fiveMeOxxT,
    Substance.cannabis,
  ]);
  static const SubstanceCategory dissociatives =
      SubstanceCategory(2, 'Dissociatives', [
    Substance.ketamine,
    Substance.mxe,
    Substance.dxm,
    Substance.nitrous,
  ]);
  static const SubstanceCategory stimulants =
      SubstanceCategory(3, 'Stimulants', [
    Substance.amphetamines,
    Substance.mdma,
    Substance.cocaine,
    Substance.caffeine,
  ]);
  static const SubstanceCategory depresants =
      SubstanceCategory(4, 'Depresants', [
    Substance.alcohol,
    Substance.ghb,
    Substance.opioids,
    Substance.tramadol,
    Substance.benzodiazepines,
  ]);

  static const SubstanceCategory other = SubstanceCategory(5, 'Other', [
    Substance.maois,
    Substance.ssris,
  ]);

  static const List<SubstanceCategory> allCategories = [
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

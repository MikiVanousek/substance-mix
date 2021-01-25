import 'drug_category.dart';

class Drug {
  final String name;
  final int id;
  final DrugCategory category;

  const Drug(this.id, this.name, this.category);

  @override
  bool operator ==(other){
    return other is Drug && other.id == this.id;
  }

  static const Drug lsd           = Drug(0, 'LSD', DrugCategory.psychedelics);
  static const Drug mushrooms     = Drug(1, 'Mushrooms', DrugCategory.psychedelics);
  static const Drug dmt           = Drug(2, 'DMT', DrugCategory.psychedelics);
  static const Drug cannabis      = Drug(3, 'Cannabis', DrugCategory.psychedelics);
  static const Drug ketamine      = Drug(4, 'Ketamine', DrugCategory.dissociatives);
  static const Drug mxe           = Drug(5, 'MXE', DrugCategory.dissociatives);
  static const Drug dxm           = Drug(6, 'DXM', DrugCategory.dissociatives);
  static const Drug nitrous       = Drug(7, 'MXE', DrugCategory.dissociatives);


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
}

class DrugCategory {
  final String name;
  final int id;

  const DrugCategory(this.name, this.id);

  static const DrugCategory psychedelics = DrugCategory('Psychedelics', 0);
  static const DrugCategory dissociatives = DrugCategory('Dissociatives', 1);
  static const DrugCategory stimulants = DrugCategory('Stimulants', 2);
  static const DrugCategory depresants = DrugCategory('Depresants', 3);
  static const DrugCategory opioids = DrugCategory('Opioids', 4);

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
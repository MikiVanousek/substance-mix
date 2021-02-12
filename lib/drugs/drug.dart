class Drug {
  final String name;
  final int id;

  const Drug(this.id, this.name);

  static const Drug lsd           = Drug(0, 'LSD');
  static const Drug mushrooms     = Drug(1, 'Mushrooms');
  static const Drug dmt           = Drug(2, 'DMT');
  static const Drug cannabis      = Drug(3, 'Cannabis');
  static const Drug ketamine      = Drug(4, 'Ketamine');
  static const Drug mxe           = Drug(5, 'MXE',);
  static const Drug dxm           = Drug(6, 'DXM',);
  static const Drug nitrous       = Drug(7, 'MXE',);


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

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(other){
    return other is Drug && other.id == this.id;
  }

  @override
  String toString() => name;
}

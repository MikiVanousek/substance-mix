class Substance {
  final String name;
  final int id;

  const Substance(this.id, this.name);

  static const Substance lsd = Substance(0, 'LSD');
  static const Substance mushrooms = Substance(1, 'Mushrooms');
  static const Substance dmt = Substance(2, 'DMT');
  static const Substance mescaline = Substance(3, 'Mescaline');
  static const Substance dox = Substance(4, 'DOx');
  static const Substance nbomes = Substance(5, 'NBOMes');
  static const Substance twoCx = Substance(6, '2C-x');
  static const Substance twoCTx = Substance(7, '2C-T-x');
  static const Substance fiveMeOxxT = Substance(8, '5-MeOxxT');
  static const Substance cannabis = Substance(9, 'Cannabis');

  static const Substance ketamine = Substance(10, 'Ketamine');
  static const Substance mxe = Substance(11, 'MXE');
  static const Substance dxm = Substance(12, 'DXM');
  static const Substance nitrous = Substance(13, 'MXE');

  static const Substance amphetamines = Substance(14, 'Amphetamines');
  static const Substance mdma = Substance(15, 'MDMA');
  static const Substance cocaine = Substance(16, 'Cocaine');
  static const Substance caffeine = Substance(17, 'Caffeine');

  static const Substance alcohol = Substance(18, 'Alcohol');
  static const Substance ghb = Substance(19, 'GHB/GBL');
  static const Substance opioids = Substance(20, 'Opioids');
  static const Substance tramadol = Substance(21, 'Tramadol');
  static const Substance benzodiazepines = Substance(22, 'Benzodiazepines');

  static const Substance maois = Substance(23, 'MAOIs');
  static const Substance ssris = Substance(24, 'SSRIs');

  static const List<Substance> allSubstances = [
    twoCx,
    twoCTx,
    fiveMeOxxT,
    alcohol,
    amphetamines,
    benzodiazepines,
    caffeine,
    cannabis,
    cocaine,
    dmt,
    dox,
    dxm,
    ghb,
    ketamine,
    lsd,
    maois,
    mdma,
    mescaline,
    mushrooms,
    mxe,
    nbomes,
    nitrous,
    opioids,
    ssris,
    tramadol,
  ];

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(other) {
    return other is Substance && other?.id == this.id;
  }

  @override
  String toString() => name;
}

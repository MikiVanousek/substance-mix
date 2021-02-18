import 'package:flutter/material.dart';

class Drug {
  final String name;
  final int id;

  const Drug(this.id, this.name);

  static const Drug lsd           = Drug(0, 'LSD');
  static const Drug mushrooms     = Drug(1, 'Mushrooms');
  static const Drug dmt           = Drug(2, 'DMT');
  static const Drug mescaline     = Drug(3, 'Mescaline');
  static const Drug dox           = Drug(4, 'DOx');
  static const Drug nbomes        = Drug(5, 'NBOMes');
  static const Drug twoCx         = Drug(6, '2C-x');
  static const Drug twoCTx        = Drug(7, '2C-T-x');
  static const Drug fiveMeOxxT    = Drug(8, '5-MeOxxT');
  static const Drug cannabis      = Drug(9, 'Cannabis');

  static const Drug ketamine      = Drug(10, 'Ketamine');
  static const Drug mxe           = Drug(11, 'MXE',);
  static const Drug dxm           = Drug(12, 'DXM',);
  static const Drug nitrous       = Drug(13, 'MXE',);

  static const Drug amphetamines  = Drug(14, 'Amphetamines');
  static const Drug mdma          = Drug(15, 'MDMA');
  static const Drug cocaine       = Drug(16, 'Cocaine');
  static const Drug caffeine      = Drug(17, 'Caffeine');

  static const Drug alcohol       = Drug(18, 'Alcohol');
  static const Drug ghb           = Drug(19, 'GHB/GBL');
  static const Drug opioids       = Drug(20, 'Opioids');
  static const Drug tramadol      = Drug(21, 'Tramadol');
  static const Drug benzodiazepines= Drug(22, 'Benzodiazepines');

  static const Drug maois         = Drug(23, 'MAOIs');
  static const Drug ssris         = Drug(24, 'SSRIs');




  static const List<Drug> allDrgus = [
   lsd,
    mushrooms,
    dmt,
    mescaline,
    dox,
    nbomes,
    twoCx,
    twoCTx,
    fiveMeOxxT,
    cannabis,
    ketamine,
    mxe,
    dxm,
    nitrous,
    amphetamines,
    mdma,
    cocaine,
    caffeine,
    alcohol,
    ghb,
    opioids,
    tramadol,
    benzodiazepines,
    maois,
    ssris,
  ];

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(other){
    return other is Drug && other?.id == this.id;
  }

  @override
  String toString() => name;
}

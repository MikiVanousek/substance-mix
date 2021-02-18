import 'package:drug_combos/drugs/combo_results.dart';

class DCIcons{
  static const String icFolder = 'assets/icons/';
  static const String suffix = '.svg';
  static const String logo = icFolder + 'logo' + suffix;
  static const String arrow = icFolder + 'arrow' + suffix;
  static const String info = icFolder + 'info' + suffix;

  static const Map<ComboResult, String> resultIcons = {
    ComboResult.lrSynergy: icFolder + 'lr_synergy' + suffix,
    ComboResult.lrNoSynergy: icFolder + 'lr_no_synergy' + suffix,
    ComboResult.lrDisharmony: icFolder + 'lr_synergy' + suffix,
    ComboResult.beCautious: icFolder + 'be_cautious' + suffix,
    ComboResult.notSafe: icFolder + 'not_safe' + suffix,
    ComboResult.dangerous: icFolder + 'dangerous' + suffix,
    ComboResult.NaN: '',
  };

}

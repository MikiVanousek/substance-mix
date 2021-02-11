import 'package:drug_combos/dc_bloc.dart';
import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_icons.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/dc_router.dart';
import 'package:drug_combos/screens/dc_homescreen.dart';
import 'package:drug_combos/widgets/dc_scaffold.dart';
import 'package:drug_combos/widgets/drug_input.dart';
import 'package:drug_combos/widgets/result_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'drugs/drug.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: DCColors.primary,
      // navigation bar color
      statusBarColor: DCColors.primary,
      // status bar color
      systemNavigationBarDividerColor: DCColors.navigationDivider,
      //Navigation bar divider color
      statusBarBrightness: Brightness.dark,
      //status bar brigtness
      statusBarIconBrightness: Brightness.dark,
      //status barIcon Brightness
      systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icon
    ));

    return BlocProvider<DCBloc>(
      create: (BuildContext context) => DCBloc(),
      child: WidgetsApp(
        title: 'Flutter Demo',
        color: DCColors.primary,
        onGenerateRoute: DCRouter.generate,
        initialRoute: DCRouter.routeHomescreen,
      ),
    );
  }
}

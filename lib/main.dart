import 'package:drug_combos/presets/dc_colors.dart';
import 'package:drug_combos/presets/dc_dimens.dart';
import 'package:drug_combos/presets/dc_icons.dart';
import 'package:drug_combos/presets/dc_text_styles.dart';
import 'package:drug_combos/widgets/dc_scaffold.dart';
import 'package:drug_combos/widgets/drug_input.dart';
import 'package:drug_combos/widgets/result_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

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

    return WidgetsApp(
      title: 'Flutter Demo',
      color: DCColors.primary,
      onGenerateRoute: generate,
      initialRoute: '/',
    );
  }

  Route generate(RouteSettings settings) {
    return PageRouteBuilder(pageBuilder: (BuildContext context,
        Animation<double> animation, Animation<double> secondaryAnimation) {
      return DCHomePage();
    });
  }
}

class DCHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DCScaffold(
      appbar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(aspectRatio: 1),
          Center(
              child: Text(
            'Drug Combos',
            style: DCTextStyles.title,
          )),
          AspectRatio(
            aspectRatio: 1,
            child: Center(
                child: SvgPicture.asset(
              DCIcons.info,
              height: DCDimens.iconSize,
              width: DCDimens.iconSize,
            )),
          ),
        ],
      ),
      children: [
        SizedBox(
          height: DCDimens.paddingHorizontalBig,
        ),
        DrugInput(
          label: 'First Drug:',
          content: 'Choose...',
        ),
        SizedBox(
          height: DCDimens.paddingHorizontalBig,
        ),
        DrugInput(
          label: 'Second Drug:',
          content: 'Choose...',
        ),
        SizedBox(
          height: DCDimens.paddingHorizontalBig,
        ),
        Expanded(child: ResultOutput()),
        SizedBox(
          height: 64,
        ),
      ],

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

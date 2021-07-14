import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:substance_mix/bloc/sm_bloc.dart';
import 'package:substance_mix/bloc/sm_legal_bloc.dart';
import 'package:substance_mix/presets/sm_colors.dart';
import 'package:substance_mix/sm_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: SMColors.primary,
      // navigation bar color
      statusBarColor: SMColors.primary,
      // status bar color
      systemNavigationBarDividerColor: SMColors.navigationDivider,
      //Navigation bar divider color
      statusBarBrightness: Brightness.dark,
      //status bar brigtness
      statusBarIconBrightness: Brightness.dark,
      //status barIcon Brightness
      systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icon
    ));

    return MultiBlocProvider(
      providers: [
        BlocProvider<SMBloc>(create: (_) => SMBloc()),
        BlocProvider<SMLegalBloc>(create: (_) => SMLegalBloc()),
      ],
      child: WidgetsApp(
        title: 'Substance Mix',
        color: SMColors.primary,
        onGenerateRoute: SMRouter.generate,
        initialRoute: SMRouter.routeHomescreen,
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DCLegalBloc extends Cubit<DCLegalState> {
  static const String _KEY = "DCLegalAccepted";
  DCLegalBloc() : super(DCLegalState.loading) {
    _fetchIsAccepted();
  }

  void _fetchIsAccepted() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.get(_KEY) != null && prefs.getBool(_KEY)) emit(DCLegalState.accepted);
    else emit(DCLegalState.notAccepted);
  }

  void setAccepted() async {
    emit(DCLegalState.loading);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_KEY, true);
    _fetchIsAccepted();
  }
}

enum DCLegalState {
  loading,
  notAccepted,
  accepted,
}
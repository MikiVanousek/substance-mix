import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SMLegalBloc extends Cubit<SMLegalState> {
  static const String _KEY = "SMLegalAccepted";
  SMLegalBloc() : super(SMLegalState.loading) {
    _fetchIsAccepted();
  }

  void _fetchIsAccepted() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.get(_KEY) != null && prefs.getBool(_KEY))
      emit(SMLegalState.accepted);
    else
      emit(SMLegalState.notAccepted);
  }

  void setAccepted() async {
    emit(SMLegalState.loading);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_KEY, true);
    _fetchIsAccepted();
  }
}

enum SMLegalState {
  loading,
  notAccepted,
  accepted,
}

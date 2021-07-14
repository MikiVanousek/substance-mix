import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:substance_mix/model/substance.dart';

import 'substance_selection_state.dart';

class SMBloc extends Bloc<SubstanceSelectedEvent, SubstanceSelectionState> {
  SMBloc() : super(SubstanceSelectionState());

  @override
  Stream<SubstanceSelectionState> mapEventToState(
      SubstanceSelectedEvent event) async* {
    if (event.type == SubstanceInputType.first) {
      yield SubstanceSelectionState(
          firstSubstance: event.substance,
          secondSubstance: state.secondSubstance);
    } else if (event.type == SubstanceInputType.second) {
      yield SubstanceSelectionState(
          firstSubstance: state.firstSubstance,
          secondSubstance: event.substance);
    } else {
      throw UnimplementedError('An unsupported event has been added.');
    }
  }
}

class SubstanceSelectedEvent {
  final Substance substance;
  final SubstanceInputType type;

  SubstanceSelectedEvent(this.substance, this.type);
}

enum SubstanceInputType { first, second }

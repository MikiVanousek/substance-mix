import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:substance_mix/bloc/sm_bloc.dart';
import 'package:substance_mix/bloc/substance_selection_state.dart';
import 'package:substance_mix/model/substance.dart';

main() {
  group('Bloc tests', () {
    blocTest('changing first substance',
        build: () => SMBloc(),
        act: (bloc) {
          bloc.add(SubstanceSelectedEvent(
              Substance.cannabis, SubstanceInputType.first));
          bloc.add(
              SubstanceSelectedEvent(Substance.lsd, SubstanceInputType.second));
          bloc.add(SubstanceSelectedEvent(null, SubstanceInputType.first));
        },
        expect: () => [
              SubstanceSelectionState(
                  firstSubstance: Substance.cannabis, secondSubstance: null),
              SubstanceSelectionState(
                  firstSubstance: Substance.cannabis,
                  secondSubstance: Substance.lsd),
              SubstanceSelectionState(
                  firstSubstance: null, secondSubstance: Substance.lsd),
            ]);
  });
}

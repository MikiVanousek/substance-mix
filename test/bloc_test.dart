import 'package:bloc_test/bloc_test.dart';
import 'package:drug_combos/dc_bloc.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('DCBloc', () {
    DCBloc bloc;

    setUp(() {
      bloc = DCBloc();
    });

    test('initial state', () {
      expect(bloc.state.firstDrug, null);
      expect(bloc.state.secondDrug, null);
    });

    blocTest('changing first drug',
        build: () => bloc,
        act: (bloc) => bloc.add(FirstDrugSelectedEvent(Drug.cannabis)),
      expect: [DrugSelectionState(firstDrug: Drug.cannabis, secondDrug: null)]
    );

    blocTest('changing second drug',
        build: () => bloc,
        act: (bloc) => bloc.add(SecondDrugSelectedEvent(Drug.lsd)),
        expect: [DrugSelectionState(firstDrug: Drug.cannabis, secondDrug: Drug.lsd)]
    );

    blocTest('resetting second drug',
        build: () => bloc,
        act: (bloc) => bloc.add(SecondDrugSelectedEvent(null)),
        expect: [DrugSelectionState(firstDrug: Drug.cannabis, secondDrug: null)]
    );
  });
}

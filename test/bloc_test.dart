import 'package:bloc_test/bloc_test.dart';
import 'package:drug_combos/bloc/dc_bloc.dart';
import 'package:drug_combos/drugs/drug.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Bloc tests', () {

    blocTest('changing first drug',
        build: () => DCBloc(),
        act: (bloc) {
          bloc.add(DrugSelectedEvent(Drug.cannabis, DrugInputType.first));
          bloc.add(DrugSelectedEvent(Drug.lsd, DrugInputType.second));
          bloc.add(DrugSelectedEvent(null, DrugInputType.first));
        },
        expect: [
          DrugSelectionState(firstDrug: Drug.cannabis, secondDrug: null),
          DrugSelectionState(firstDrug: Drug.cannabis, secondDrug: Drug.lsd),
          DrugSelectionState(firstDrug: null, secondDrug: Drug.lsd),
        ]
    );

});
}

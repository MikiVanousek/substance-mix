import 'package:drug_combos/drugs/drug.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiver/core.dart';

class DCBloc extends Bloc<DrugSelectedEvent, DrugSelectionState>{

  DCBloc() : super(DrugSelectionState());

  @override
  Stream<DrugSelectionState> mapEventToState(DrugSelectedEvent event) async*{
    if(event is FirstDrugSelectedEvent){
      yield DrugSelectionState(firstDrug: event.drug, secondDrug: state.secondDrug);
    }
    else if(event is SecondDrugSelectedEvent){
      yield DrugSelectionState(firstDrug: state.firstDrug, secondDrug: event.drug);
    }
    else {
      throw UnimplementedError('An unsupported event has been added.');
    }
  }

}

abstract class DrugSelectedEvent {
  final Drug drug;
  DrugSelectedEvent(this.drug);
}

class FirstDrugSelectedEvent extends DrugSelectedEvent{
  FirstDrugSelectedEvent(Drug drug) : super(drug);
}

class SecondDrugSelectedEvent extends DrugSelectedEvent{
  SecondDrugSelectedEvent(Drug drug) : super(drug);
}


enum DrugInputType{
  first,
  second
}

class DrugSelectionState {
  final Drug firstDrug;
  final Drug secondDrug;

  DrugSelectionState({this.firstDrug, this.secondDrug});

  @override
  bool operator ==(Object other) {
    return other is DrugSelectionState && other.firstDrug == other.firstDrug && other.secondDrug == other.secondDrug;
  }

  @override
  int get hashCode => hash2(firstDrug, secondDrug);

}
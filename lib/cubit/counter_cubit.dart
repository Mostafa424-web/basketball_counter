import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement({required String team,required int buttonNumber}) {
    if(team == 'A'){
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
    }else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
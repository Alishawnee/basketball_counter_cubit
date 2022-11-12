import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;

      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;

      emit(CounterBIncrementState());
    }
  }
}

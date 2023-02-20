import 'dart:developer';

import 'package:flutter_application_1/cubits/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int miamiheat = 0;
  int ultajzz = 0;

  void teamsIncrement({required String team, required int buttunNumber}) {
    if (team == 'miamiheat') {
      miamiheat += buttunNumber;
      emit(CounterAIncrementState());
    } else {
      ultajzz += buttunNumber;
      emit(counterBIncrementState());
    }
  }

  void reset () {
  
      miamiheat = 0;
      emit(CounterAIncrementState());    
      ultajzz = 0;
      emit(counterBIncrementState());
    }
  }


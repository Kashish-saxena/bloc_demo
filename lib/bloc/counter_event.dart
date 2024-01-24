import 'package:bloc_demo/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterEvent {
  int counter = 0;
}

class CounterIncreamentEvent extends CounterEvent {
  void onIncreamentCounter(CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterChangeState(++counter));
  }
}

class CounterDecreamentEvent extends CounterEvent {
  void onDecreamentCounter(CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterChangeState(--counter));
  }
}

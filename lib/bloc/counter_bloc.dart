import 'package:bloc_demo/bloc/counter_event.dart';
import 'package:bloc_demo/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterIntitialState()) {
    on<CounterIncreamentEvent>(onIncreamentCounter
        // (event, emit) {
        //   emit(CounterState(counter: (state.counter + 1)));
        // },
        );
    on<CounterDecreamentEvent>(onDecreamentCounter
        // (event, emit) {
        //   emit(CounterState(counter: (state.counter - 1)));
        // },
        );
  }
  void onIncreamentCounter(CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterChangeState(++counter));
  }

  void onDecreamentCounter(CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterChangeState(--counter));
  }
}



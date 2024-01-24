class CounterState {
  // int counter;
  // CounterState({required this.counter});
}

class CounterIntitialState extends CounterState {
  // CounterIntitialState() : super(counter: 0);
}

class CounterChangeState extends CounterState {
  // CounterChangeState({required super.counter});
  int counter;
  CounterChangeState(this.counter);
}

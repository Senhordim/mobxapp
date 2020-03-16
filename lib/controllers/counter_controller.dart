import 'package:mobx/mobx.dart';

class CounterController {
  var _counter = Observable(0);

  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  Action increment;

  CounterController() {
    increment = Action(_increment);
  }

  _increment() {
    counter++;
  }
}

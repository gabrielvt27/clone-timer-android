import 'package:mobx/mobx.dart';
part 'counter_store.g.dart';

class CounterStore = _CounterStoreBase with _$CounterStore;

abstract class _CounterStoreBase with Store {
  ObservableList timers = ObservableList();

  @action
  void setTimer(Duration timer) => timers.add(timer);
}

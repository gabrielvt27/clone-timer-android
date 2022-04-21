import 'package:mobx/mobx.dart';
part 'counter_store.g.dart';

class CounterStore = _CounterStoreBase with _$CounterStore;

abstract class _CounterStoreBase with Store {
  ObservableList<Duration> timers = ObservableList<Duration>();

  @action
  void setTimer(Duration timer) {
    timers.insert(0, timer);
  }

  @observable
  bool jumpToPage = false;

  @observable
  int indexTimerSelected = 0;

  @action
  void setIndexTimerSelected(int val) => indexTimerSelected = val;

  @action
  int removeTimer(int index) {
    timers.removeAt(index);
    return timers.length;
  }

  @computed
  Duration get timerSelected => timers[indexTimerSelected];
}

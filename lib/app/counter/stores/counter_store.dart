import 'dart:async';

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

  @observable
  Duration? currentDuration;

  @observable
  Timer? currentTimer;

  @observable
  double timerPercentual = 1;

  @action
  void setCurrentTimer(Duration val) {
    int timeInSecondsDecrement = val.inSeconds, count = 0, miliseconds = 10;
    double auxTimerPercentual,
        valPercentDecrement = (0.001 * miliseconds) / val.inSeconds;

    timerPercentual = 1;

    currentTimer = Timer.periodic(Duration(milliseconds: miliseconds), (timer) {
      auxTimerPercentual = timerPercentual - valPercentDecrement;
      if (auxTimerPercentual > 0) {
        timerPercentual = auxTimerPercentual;
      } else {
        timerPercentual = 0;
      }
      if (count == 1000) {
        count = 0;

        timeInSecondsDecrement--;

        currentDuration = Duration(seconds: timeInSecondsDecrement);

        if (timeInSecondsDecrement == 0) {
          timer.cancel();
          currentDuration = null;
          timerPercentual = 1;
        }
      } else {
        count += miliseconds;
      }
    });
  }
}

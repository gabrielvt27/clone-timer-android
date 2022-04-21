import 'package:mobx/mobx.dart';
part 'timer_store.g.dart';

class TimerStore = _TimerStoreBase with _$TimerStore;

abstract class _TimerStoreBase with Store {
  @observable
  String _timerValue = '0';

  @computed
  bool get timerEmpty => _timerValue == '0' || _timerValue == '00';

  @observable
  bool showDelete = false;

  @action
  void setShowDelete(bool val) => showDelete = val;

  @action
  void setTimerValue(String val) {
    String value;

    if (timerEmpty) {
      value = val;
    } else {
      value = '$_timerValue$val';
    }

    if (value.toString().length <= 6) {
      _timerValue = value;
    }
  }

  @computed
  String get timerValueDisplay => _timerValue.padLeft(6, '0');

  @computed
  String get seconds => timerValueDisplay.substring(4, 6);

  @computed
  String get minutes => timerValueDisplay.substring(2, 4);

  @computed
  String get hours => timerValueDisplay.substring(0, 2);

  @action
  void clearLastCaracter() => _timerValue = (_timerValue.length == 1)
      ? '0'
      : _timerValue.substring(0, _timerValue.length - 1);

  @action
  void clearAllCaracter() => _timerValue = '0';

  Duration get getDuration {
    return Duration(
      hours: int.parse(hours),
      minutes: int.parse(minutes),
      seconds: int.parse(seconds),
    );
  }
}

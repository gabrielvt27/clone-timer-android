// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStoreBase, Store {
  Computed<Duration>? _$timerSelectedComputed;

  @override
  Duration get timerSelected =>
      (_$timerSelectedComputed ??= Computed<Duration>(() => super.timerSelected,
              name: '_CounterStoreBase.timerSelected'))
          .value;

  final _$jumpToPageAtom = Atom(name: '_CounterStoreBase.jumpToPage');

  @override
  bool get jumpToPage {
    _$jumpToPageAtom.reportRead();
    return super.jumpToPage;
  }

  @override
  set jumpToPage(bool value) {
    _$jumpToPageAtom.reportWrite(value, super.jumpToPage, () {
      super.jumpToPage = value;
    });
  }

  final _$indexTimerSelectedAtom =
      Atom(name: '_CounterStoreBase.indexTimerSelected');

  @override
  int get indexTimerSelected {
    _$indexTimerSelectedAtom.reportRead();
    return super.indexTimerSelected;
  }

  @override
  set indexTimerSelected(int value) {
    _$indexTimerSelectedAtom.reportWrite(value, super.indexTimerSelected, () {
      super.indexTimerSelected = value;
    });
  }

  final _$currentDurationAtom = Atom(name: '_CounterStoreBase.currentDuration');

  @override
  Duration? get currentDuration {
    _$currentDurationAtom.reportRead();
    return super.currentDuration;
  }

  @override
  set currentDuration(Duration? value) {
    _$currentDurationAtom.reportWrite(value, super.currentDuration, () {
      super.currentDuration = value;
    });
  }

  final _$currentTimerAtom = Atom(name: '_CounterStoreBase.currentTimer');

  @override
  Timer? get currentTimer {
    _$currentTimerAtom.reportRead();
    return super.currentTimer;
  }

  @override
  set currentTimer(Timer? value) {
    _$currentTimerAtom.reportWrite(value, super.currentTimer, () {
      super.currentTimer = value;
    });
  }

  final _$timerPercentualAtom = Atom(name: '_CounterStoreBase.timerPercentual');

  @override
  double get timerPercentual {
    _$timerPercentualAtom.reportRead();
    return super.timerPercentual;
  }

  @override
  set timerPercentual(double value) {
    _$timerPercentualAtom.reportWrite(value, super.timerPercentual, () {
      super.timerPercentual = value;
    });
  }

  final _$_CounterStoreBaseActionController =
      ActionController(name: '_CounterStoreBase');

  @override
  void setTimer(Duration timer) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.setTimer');
    try {
      return super.setTimer(timer);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIndexTimerSelected(int val) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.setIndexTimerSelected');
    try {
      return super.setIndexTimerSelected(val);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  int removeTimer(int index) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.removeTimer');
    try {
      return super.removeTimer(index);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentTimer(Duration val) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.setCurrentTimer');
    try {
      return super.setCurrentTimer(val);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jumpToPage: ${jumpToPage},
indexTimerSelected: ${indexTimerSelected},
currentDuration: ${currentDuration},
currentTimer: ${currentTimer},
timerPercentual: ${timerPercentual},
timerSelected: ${timerSelected}
    ''';
  }
}

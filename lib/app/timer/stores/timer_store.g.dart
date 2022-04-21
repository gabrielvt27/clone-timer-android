// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TimerStore on _TimerStoreBase, Store {
  Computed<bool>? _$timerEmptyComputed;

  @override
  bool get timerEmpty =>
      (_$timerEmptyComputed ??= Computed<bool>(() => super.timerEmpty,
              name: '_TimerStoreBase.timerEmpty'))
          .value;
  Computed<String>? _$timerValueDisplayComputed;

  @override
  String get timerValueDisplay => (_$timerValueDisplayComputed ??=
          Computed<String>(() => super.timerValueDisplay,
              name: '_TimerStoreBase.timerValueDisplay'))
      .value;
  Computed<String>? _$secondsComputed;

  @override
  String get seconds =>
      (_$secondsComputed ??= Computed<String>(() => super.seconds,
              name: '_TimerStoreBase.seconds'))
          .value;
  Computed<String>? _$minutesComputed;

  @override
  String get minutes =>
      (_$minutesComputed ??= Computed<String>(() => super.minutes,
              name: '_TimerStoreBase.minutes'))
          .value;
  Computed<String>? _$hoursComputed;

  @override
  String get hours => (_$hoursComputed ??=
          Computed<String>(() => super.hours, name: '_TimerStoreBase.hours'))
      .value;

  final _$_timerValueAtom = Atom(name: '_TimerStoreBase._timerValue');

  @override
  String get _timerValue {
    _$_timerValueAtom.reportRead();
    return super._timerValue;
  }

  @override
  set _timerValue(String value) {
    _$_timerValueAtom.reportWrite(value, super._timerValue, () {
      super._timerValue = value;
    });
  }

  final _$showDeleteAtom = Atom(name: '_TimerStoreBase.showDelete');

  @override
  bool get showDelete {
    _$showDeleteAtom.reportRead();
    return super.showDelete;
  }

  @override
  set showDelete(bool value) {
    _$showDeleteAtom.reportWrite(value, super.showDelete, () {
      super.showDelete = value;
    });
  }

  final _$_TimerStoreBaseActionController =
      ActionController(name: '_TimerStoreBase');

  @override
  void setShowDelete(bool val) {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.setShowDelete');
    try {
      return super.setShowDelete(val);
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTimerValue(String val) {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.setTimerValue');
    try {
      return super.setTimerValue(val);
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearLastCaracter() {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.clearLastCaracter');
    try {
      return super.clearLastCaracter();
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearAllCaracter() {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.clearAllCaracter');
    try {
      return super.clearAllCaracter();
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showDelete: ${showDelete},
timerEmpty: ${timerEmpty},
timerValueDisplay: ${timerValueDisplay},
seconds: ${seconds},
minutes: ${minutes},
hours: ${hours}
    ''';
  }
}

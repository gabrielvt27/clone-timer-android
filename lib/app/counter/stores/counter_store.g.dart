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
  String toString() {
    return '''
jumpToPage: ${jumpToPage},
indexTimerSelected: ${indexTimerSelected},
timerSelected: ${timerSelected}
    ''';
  }
}

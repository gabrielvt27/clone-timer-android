import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/base/store/base_store.dart';
import 'package:timer/app/counter/stores/counter_store.dart';
import 'package:timer/app/timer/components/timer_button_value.dart';
import 'package:timer/app/timer/stores/timer_store.dart';

import 'package:timer/constants.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimerButtonValue(
      icon: Icons.play_arrow,
      buttonColor: AppColors.kPlayButtonColor,
      textColor: AppColors.kTextPlayButtonColor,
      onTap: () {
        final baseStore = context.read<BaseStore>();
        final timerStore = context.read<TimerStore>();
        final counterStore = context.read<CounterStore>();

        counterStore.setTimer(timerStore.getDuration);
        baseStore.setPage(0);

        timerStore.clearAllCaracter();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/timer/components/timer_button_value.dart';
import 'package:timer/app/timer/stores/timer_store.dart';

import 'package:timer/constants.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({Key? key}) : super(key: key);

  final double heightButtonSpace = 8;

  @override
  Widget build(BuildContext context) {
    final TimerStore timerStore = context.read<TimerStore>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimerButtonValue(
              text: '1',
              onTap: () {
                timerStore.setTimerValue('1');
              },
            ),
            TimerButtonValue(
              text: '2',
              onTap: () {
                timerStore.setTimerValue('2');
              },
            ),
            TimerButtonValue(
              text: '3',
              onTap: () {
                timerStore.setTimerValue('3');
              },
            ),
          ],
        ),
        SizedBox(
          height: heightButtonSpace,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimerButtonValue(
              text: '4',
              onTap: () {
                timerStore.setTimerValue('4');
              },
            ),
            TimerButtonValue(
              text: '5',
              onTap: () {
                timerStore.setTimerValue('5');
              },
            ),
            TimerButtonValue(
              text: '6',
              onTap: () {
                timerStore.setTimerValue('6');
              },
            ),
          ],
        ),
        SizedBox(
          height: heightButtonSpace,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimerButtonValue(
              text: '7',
              onTap: () {
                timerStore.setTimerValue('7');
              },
            ),
            TimerButtonValue(
              text: '8',
              onTap: () {
                timerStore.setTimerValue('8');
              },
            ),
            TimerButtonValue(
              text: '9',
              onTap: () {
                timerStore.setTimerValue('9');
              },
            ),
          ],
        ),
        SizedBox(
          height: heightButtonSpace,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimerButtonValue(
              text: '00',
              onTap: () {
                timerStore.setTimerValue('00');
              },
            ),
            TimerButtonValue(
              text: '0',
              onTap: () {
                timerStore.setTimerValue('0');
              },
            ),
            TimerButtonValue(
              icon: Icons.backspace_outlined,
              buttonColor: AppColors.kClearButtonColor,
              textColor: AppColors.kTextClearButtonColor,
              onTap: timerStore.clearLastCaracter,
              onLongPress: timerStore.clearAllCaracter,
            ),
          ],
        ),
      ],
    );
  }
}

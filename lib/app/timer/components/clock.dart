import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/timer/stores/timer_store.dart';

import 'package:timer/constants.dart';

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  final double clockFontSize = 70;
  final double suffixFontSize = 24;

  @override
  Widget build(BuildContext context) {
    final TimerStore timerStore = context.read<TimerStore>();
    return Observer(
      builder: (context) {
        return Row(
          children: [
            RichText(
              text: TextSpan(
                text: timerStore.hours,
                style: TextStyle(
                  color: AppColors.kTextTimerColor,
                  fontSize: clockFontSize,
                ),
                children: [
                  TextSpan(
                    text: 'h',
                    style: TextStyle(
                      fontSize: suffixFontSize,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: kDefaultPadding / 2,
            ),
            RichText(
              text: TextSpan(
                text: timerStore.minutes,
                style: TextStyle(
                  color: AppColors.kTextTimerColor,
                  fontSize: clockFontSize,
                ),
                children: [
                  TextSpan(
                    text: 'm',
                    style: TextStyle(
                      fontSize: suffixFontSize,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: kDefaultPadding / 2,
            ),
            RichText(
              text: TextSpan(
                text: timerStore.seconds,
                style: TextStyle(
                  color: AppColors.kTextTimerColor,
                  fontSize: clockFontSize,
                ),
                children: [
                  TextSpan(
                    text: 's',
                    style: TextStyle(
                      fontSize: suffixFontSize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

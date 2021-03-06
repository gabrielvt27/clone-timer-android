import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/base/store/base_store.dart';
import 'package:timer/app/timer/components/timer_button.dart';
import 'package:timer/app/timer/components/clock.dart';
import 'package:timer/app/timer/components/play_button.dart';
import 'package:timer/app/timer/components/timer_button_value.dart';
import 'package:timer/app/timer/stores/timer_store.dart';

import 'package:timer/constants.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TimerStore timerStore = context.read<TimerStore>();
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Observer(
        builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Clock(),
              const TimerButton(),
              (timerStore.showDelete)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TimerButtonValue(
                          icon: Icons.delete_outline_rounded,
                          buttonColor: const Color.fromRGBO(192, 234, 205, 1),
                          textColor: Colors.black,
                          buttonSize: kDefaultPadding * 1.7,
                          onTap: () {
                            final baseStore = context.read<BaseStore>();
                            baseStore.setPage(0);
                          },
                        ),
                        const Spacer(),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 180),
                          child: timerStore.timerEmpty
                              ? const SizedBox(
                                  height: kDefaultPadding * 2.5,
                                )
                              : const PlayButton(),
                        ),
                        const Spacer(),
                        Container(),
                        const Spacer(),
                      ],
                    )
                  : AnimatedSwitcher(
                      duration: const Duration(milliseconds: 180),
                      child: timerStore.timerEmpty
                          ? const SizedBox(
                              height: kDefaultPadding * 2.5,
                            )
                          : const PlayButton(),
                    ),
            ],
          );
        },
      ),
    );
  }
}

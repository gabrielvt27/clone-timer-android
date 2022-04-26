import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/base/store/base_store.dart';
import 'package:timer/app/counter/stores/counter_store.dart';
import 'package:timer/app/timer/components/timer_button_value.dart';
import 'package:timer/app/timer/stores/timer_store.dart';
import 'package:timer/constants.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterStore counterStore = Provider.of<CounterStore>(context);
    PageController pageController = PageController(initialPage: 0);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Marcador',
            style: TextStyle(
              color: AppColors.kTextColor,
              fontSize: 24,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(
                  builder: (context) {
                    return Expanded(
                      child: PageView(
                        controller: pageController,
                        onPageChanged: (index) {
                          counterStore.setIndexTimerSelected(index);
                        },
                        scrollDirection: Axis.vertical,
                        children: counterStore.timers
                            .asMap()
                            .map((i, value) {
                              String timerVal =
                                  (counterStore.currentDuration != null &&
                                          i == counterStore.indexTimerSelected)
                                      ? counterStore.currentDuration
                                          .toString()
                                          .replaceAll('.000000', '')
                                      : counterStore.timers[i]
                                          .toString()
                                          .replaceAll('.000000', '');
                              return MapEntry(i, Center(
                                child: Observer(builder: (_) {
                                  return CircularPercentIndicator(
                                    radius: 155,
                                    lineWidth: 10.0,
                                    percent: counterStore.timerPercentual,
                                    backgroundColor: AppColors.kBackGroundColor,
                                    progressColor: AppColors.kTextTimerColor,
                                    center: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: kDefaultPadding),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(
                                            height: 60,
                                          ),
                                          Text(
                                            timerVal,
                                            style: TextStyle(
                                              color: AppColors.kTextColor,
                                              fontSize: 60,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 60,
                                          ),
                                          Text(
                                            'Zerar',
                                            style: TextStyle(
                                              color: AppColors.kPlayButtonColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ));
                            })
                            .values
                            .toList(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: kDefaultPadding / 2.5,
                ),
                Observer(
                  builder: (_) {
                    final index = counterStore.indexTimerSelected;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: counterStore.timers
                          .asMap()
                          .map((i, t) => MapEntry(
                                i,
                                Container(
                                  width: kDefaultPadding / 4,
                                  height: i == index
                                      ? kDefaultPadding / 1.5
                                      : kDefaultPadding / 4,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 1),
                                  decoration: i == index
                                      ? BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          color: AppColors.kTextTimerColor,
                                        )
                                      : const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 81, 81, 81),
                                        ),
                                ),
                              ))
                          .values
                          .toList(),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              children: [
                const Spacer(),
                Observer(builder: (_) {
                  return TimerButtonValue(
                    icon: Icons.delete_outline_rounded,
                    buttonColor: const Color.fromRGBO(192, 234, 205, 1),
                    textColor: Colors.black,
                    buttonSize: kDefaultPadding * 1.7,
                    onTap: () {
                      final len = counterStore
                          .removeTimer(counterStore.indexTimerSelected);

                      if (len == 0) {
                        final baseStore = context.read<BaseStore>();
                        final timerStore = context.read<TimerStore>();
                        baseStore.setPage(1);
                        timerStore.setShowDelete(false);
                      }
                    },
                  );
                }),
                const Spacer(),
                TimerButtonValue(
                  icon: Icons.play_arrow,
                  buttonColor: AppColors.kPlayButtonColor,
                  textColor: AppColors.kTextPlayButtonColor,
                  buttonSize: kDefaultPadding * 3,
                  onTap: () {
                    counterStore.setCurrentTimer(counterStore.timerSelected);
                  },
                ),
                const Spacer(),
                TimerButtonValue(
                  icon: Icons.add,
                  buttonColor: const Color.fromRGBO(192, 234, 205, 1),
                  textColor: Colors.black,
                  buttonSize: kDefaultPadding * 1.7,
                  onTap: () {
                    final baseStore = context.read<BaseStore>();
                    final timerStore = context.read<TimerStore>();
                    baseStore.setPage(1);
                    timerStore.setShowDelete(true);
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

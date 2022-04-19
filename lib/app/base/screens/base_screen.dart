import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/base/store/base_store.dart';
import 'package:timer/app/counter/screens/counter_screen.dart';
import 'package:timer/app/timer/screens/timer_screen.dart';
import 'package:timer/constants.dart';

class BaseScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  BaseScreen({Key? key}) : super(key: key);

  late final PageController pageController;

  late final BaseStore baseStore;

  void init(BaseStore baseStore) {
    pageController = PageController(initialPage: baseStore.page);

    reaction(
      (_) => baseStore.page,
      <int>(page) => pageController.jumpToPage(page),
    );
  }

  @override
  Widget build(BuildContext context) {
    init(Provider.of<BaseStore>(context));

    return Scaffold(
      backgroundColor: AppColors.kBackGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBackGroundColor,
        elevation: 0,
        title: Text(
          'Timer',
          style: TextStyle(
            color: AppColors.kTextColor,
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          CounterScreen(),
          TimerScreen(),
        ],
      ),
    );
  }
}

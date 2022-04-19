import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/base/screens/base_screen.dart';
import 'package:timer/app/base/store/base_store.dart';
import 'package:timer/app/counter/stores/counter_store.dart';
import 'package:timer/app/timer/stores/timer_store.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => BaseStore()),
        Provider(create: (_) => TimerStore()),
        Provider(create: (_) => CounterStore()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BaseScreen(),
      ),
    );
  }
}

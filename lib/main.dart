import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'g_observer.dart';
import 'views/g_counter.dart';
import 'views/home.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const GApp());
}

class GApp extends StatelessWidget {
  const GApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => HomeView(),
        GCounterView.id: (context) => const GCounterView(),
      },
    );
  }
}

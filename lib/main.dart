import 'package:flutter/material.dart';

import 'views/g_animated_align.dart';
import 'views/home.dart';

void main() {
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
        GAnimatedAlignView.id: (context) => const GAnimatedAlignView(),
      },
    );
  }
}

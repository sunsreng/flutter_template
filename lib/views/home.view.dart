import 'package:flutter/material.dart';

import 'g_animated_align.view.dart';
import 'home.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  static const id = '/HomeView';

  final List<HomeModel> list = [
    HomeModel(GAnimatedAlignView.id, 'GAnimatedAlignView'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.separated(
        itemCount: list.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(list[i].label),
          onTap: () => Navigator.pushNamed(context, GAnimatedAlignView.id),
        ),
        separatorBuilder: (context, i) => const Divider(height: 1),
      ),
    );
  }
}

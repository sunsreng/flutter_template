import 'package:flutter/material.dart';

class GAnimatedAlignView extends StatefulWidget {
  const GAnimatedAlignView({Key? key}) : super(key: key);
  static const id = '/GAnimatedAlignView';

  @override
  State<GAnimatedAlignView> createState() => _GAnimatedAlignViewState();
}

class _GAnimatedAlignViewState extends State<GAnimatedAlignView> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GAnimatedAlign'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}

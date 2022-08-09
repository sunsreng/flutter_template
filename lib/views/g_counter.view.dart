import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'g_counter.cubit.dart';
import 'g_counter.widget.dart';

class GCounterView extends StatelessWidget {
  const GCounterView({super.key});
  static const id = '/GCounterView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GCounterCubit(),
      child: const GCounterWidget(),
    );
  }
}

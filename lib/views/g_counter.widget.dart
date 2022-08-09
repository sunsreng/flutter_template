import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'g_counter.cubit.dart';

class GCounterWidget extends StatelessWidget {
  const GCounterWidget({super.key});
  static const id = '/GCounterWidget';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<GCounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: const Key('counterView_increment_floatingActionButton'),
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<GCounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: const Key('counterView_decrement_floatingActionButton'),
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<GCounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}

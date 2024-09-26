/*
Counter Page: responsible for providing counter cubit to the UI
*/

import 'package:bloc_cubit/counter/counter_cubit.dart';
import 'package:bloc_cubit/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      // child: const CounterView(),
      child: BlocListener<CounterCubit, int>(
          listener: (context, state) {
            if (state == 10) {
              showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                  title: Text('Limit Reached'),
                  content: Text('You have reached the limit of 10'),
                ),
              );
            }
            print('CounterPage: $state');
          },
          child: const CounterView()),
    );
  }
}

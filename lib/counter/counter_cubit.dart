/*
CUBIT: is a simplified version of BLOC, it is a class that extends Cubit class from flutter_bloc package. 
*/

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // Constructor
  CounterCubit(super.initialState);

  // Methods
  // increment method
  void increment() => emit(state + 1);

  // decrement method
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}

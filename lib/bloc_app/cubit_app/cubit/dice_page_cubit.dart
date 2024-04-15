import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lion_sabak_04/bloc_app/cubit_app/cubit/dice_page_cubit_state.dart';
import 'package:lion_sabak_04/services/dice_services.dart';

class DicePageCubit extends Cubit<DicePageCubitState> {
  DicePageCubit()
      : super(DicePageCubitState(
          diceOne: 3,
          diceTwo: 2,
        ));

  void throwDices() {
    final one = DiceServices.throwDice1();
    final two = DiceServices.throwDice2();

    emit(
      DicePageCubitState(diceOne: one, diceTwo: two),
    );
  }
}

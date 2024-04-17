import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/bloc/dice_page_bloc_event.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/bloc/dice_page_bloc_state.dart';
import 'package:lion_sabak_04/services/dice_services.dart';

class DicePageBloc extends Bloc<DicePageBlocEvent, DicePageBlocState> {
  DicePageBloc() : super(DicePageBlocState(diceOne: 2, diceTwo: 3)) {
    on<DiceEvent>((event, emit) {
      final dice1 = DiceServices.throwDice1();
      final dice2 = DiceServices.throwDice2();

      emit(DicePageBlocState(diceOne: dice1, diceTwo: dice2));
    });
  }
}

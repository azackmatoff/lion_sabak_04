import 'package:lion_sabak_04/riverpod_app/providers/dice_page_provider_state.dart';
import 'package:lion_sabak_04/services/dice_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dice_page_provider.g.dart';

@riverpod
class DicePageNotifier extends _$DicePageNotifier {
  @override
  DicePageProvideState build() {
    return DicePageProvideState(one: 2, two: 4);
  }

  void throwDices() {
    final one = DiceServices.throwDice1();
    final two = DiceServices.throwDice2();

    state = DicePageProvideState(one: one, two: two);
  }
}

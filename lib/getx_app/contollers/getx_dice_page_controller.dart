import 'package:get/get.dart';
import 'package:lion_sabak_04/services/dice_services.dart';

class GetxDicePageController extends GetxController {
  GetxDicePageController();

  Rx<int> diceOne = 6.obs;
  RxInt diceTwo = 3.obs;

  void throwDices() {
    final int one = DiceServices.throwDice1();
    final int two = DiceServices.throwDice2();

    diceOne.value = one;
    diceTwo.value = two;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lion_sabak_04/common/widgets/dice_widget.dart';
import 'package:lion_sabak_04/riverpod_app/providers/new_state_notifier_provider.dart';

class NewDicePageWithRiverpod extends ConsumerWidget {
  const NewDicePageWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diceOne = ref.watch(newDiceOneNotifierProvider);
    final diceTwo = ref.watch(newDiceTwoNotifierProvider);

    return Scaffold(
      backgroundColor: const Color(0xffEE5A46),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: InkWell(
            onTap: () {
              ref.read(newDiceOneNotifierProvider.notifier).throwDice();
              ref.read(newDiceTwoNotifierProvider.notifier).throwDice();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DiceWidget(diceNumber: diceOne),
                const SizedBox(width: 20),
                DiceWidget(diceNumber: diceTwo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

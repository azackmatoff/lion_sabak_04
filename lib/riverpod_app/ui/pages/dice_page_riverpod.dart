import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lion_sabak_04/common/widgets/dice_widget.dart';
import 'package:lion_sabak_04/riverpod_app/providers/dice_page_provider.dart';

class DicePageRiverpod extends ConsumerWidget {
  const DicePageRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('DicePageRiverpod');
    final state = ref.watch(dicePageNotifierProvider);

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
              ref.read(dicePageNotifierProvider.notifier).throwDices();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DiceWidget(diceNumber: state.one),
                const SizedBox(width: 20),
                DiceWidget(diceNumber: state.two),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

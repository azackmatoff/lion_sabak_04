import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lion_sabak_04/common/widgets/dice_widget.dart';
import 'package:lion_sabak_04/getx_app/contollers/getx_dice_page_controller.dart';

class GetxDicePage extends StatelessWidget {
  GetxDicePage({super.key});

  final controller = Get.put(GetxDicePageController());

  @override
  Widget build(BuildContext context) {
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
            // onTap: () {
            //   controller.throwDices();
            // },
            onTap: () => controller.throwDices(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => DiceWidget(diceNumber: controller.diceOne.value)),
                const SizedBox(width: 20),
                Obx(() {
                  return DiceWidget(diceNumber: controller.diceTwo.value);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/// State management
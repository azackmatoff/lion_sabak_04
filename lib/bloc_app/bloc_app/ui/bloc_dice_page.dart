import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/bloc/dice_page_bloc.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/bloc/dice_page_bloc_event.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/bloc/dice_page_bloc_state.dart';

import 'package:lion_sabak_04/bloc_app/cubit_app/cubit/dice_page_cubit.dart';
import 'package:lion_sabak_04/bloc_app/cubit_app/cubit/dice_page_cubit_state.dart';
import 'package:lion_sabak_04/common/widgets/dice_widget.dart';

class BlocDicePage extends StatelessWidget {
  const BlocDicePage({super.key});

  @override
  Widget build(BuildContext context) {
    log('BlocDicePage');

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
          child: BlocBuilder<DicePageBloc, DicePageBlocState>(
            builder: (context, state) {
              return InkWell(
                onTap: () => context.read<DicePageBloc>().add(DiceEvent()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DiceWidget(diceNumber: state.diceOne),
                    const SizedBox(width: 20),
                    DiceWidget(diceNumber: state.diceTwo),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

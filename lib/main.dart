import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/bloc/dice_page_bloc.dart';
import 'package:lion_sabak_04/bloc_app/bloc_app/ui/bloc_dice_page.dart';
import 'package:lion_sabak_04/bloc_app/cubit_app/cubit/dice_page_cubit.dart';
import 'package:lion_sabak_04/bloc_app/cubit_app/ui/cubit_dice_page.dart';
import 'package:lion_sabak_04/getx_app/ui/pages/getx_dice_page.dart';
import 'package:lion_sabak_04/flutter_set_state_app/dice_page.dart';
import 'package:lion_sabak_04/riverpod_app/ui/pages/dice_page_riverpod.dart';
import 'package:lion_sabak_04/riverpod_app/ui/pages/dice_page_with_riverpod.dart';
import 'package:lion_sabak_04/riverpod_app/ui/pages/new_dice_page_with_riverpod.dart';

void main() {
  // runAppWithRiverpod(isNew: false);
  // runAppWithFlutter();
  // runAppWithGetx();
  // runAppWithCubit();
  runAppWithBloc();
}

void runAppWithFlutter() {
  runApp(const MyFlutterApp());
}

void runAppWithRiverpod({required bool isNew}) {
  runApp(ProviderScope(
      child: MyRiverpodApp(
    isNew: isNew,
    isWithState: true,
  )));
}

void runAppWithGetx() {
  runApp(const MyGetxApp());
}

void runAppWithCubit() {
  runApp(const MyCubitApp());
}

void runAppWithBloc() {
  runApp(const MyBlocApp());
}

/// bul Flutter menen ishtegen prilojenie
class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DicePage(),
    );
  }
}

/// bul riverpod menen ishtegen prilojenie
class MyRiverpodApp extends StatelessWidget {
  final bool isNew;
  final bool isWithState;
  const MyRiverpodApp({
    super.key,
    required this.isNew,
    this.isWithState = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isWithState
          ? const DicePageRiverpod()
          : isNew
              ? const NewDicePageWithRiverpod()
              : const DicePageWithRiverpod(),
    );
  }
}

/// bul GetX menen ishtegen prilojenie
class MyGetxApp extends StatelessWidget {
  const MyGetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GetxDicePage(),
    );
  }
}

/// bul bLoc menen ishtegen prilojenie
class MyCubitApp extends StatelessWidget {
  const MyCubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => DicePageCubit(),
        child: const CubitDicePage(),
      ),
    );
  }
}

/// bul bLoc menen ishtegen prilojenie
class MyBlocApp extends StatelessWidget {
  const MyBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => DicePageBloc(),
        child: const BlocDicePage(),
      ),
    );
  }
}

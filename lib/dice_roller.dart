import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});
  @override
  State<RollerDice> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();
var currentDiceRoll = 2;

class _DiceRollerState extends State<RollerDice> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage = 'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 25),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 15)),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }
}

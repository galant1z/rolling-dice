import 'package:flutter/material.dart';
import 'package:mywidgetapp/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.color({super.key})
      : color1 = Colors.deepOrange,
        color2 = Colors.deepPurple;

  final Color color1, color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child: const Center(
        child: RollerDice(),
      ),
    );
  }
}

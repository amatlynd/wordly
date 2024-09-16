import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardKeys/BackspaceKey.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardKeys/EnterKey.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardKeys/LetterKey.dart';
import 'package:wordly/GuessScreen/LetterSection/LetterBlock.dart';

class ThirdKeyboardRow extends StatelessWidget {
  final int numberOfKeys;
  const ThirdKeyboardRow({required this.numberOfKeys, super.key});

  @override
  Widget build(BuildContext context) {
    const thirdRowLetters = ["A", "S", "D", "F", "G", "H", "J", "K", "L"];
    int count = 0;
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        width: 10,
      ),
      const EnterKey(),
      const SizedBox(
        width: 6,
      ),
      ...List.generate(numberOfKeys + numberOfKeys - 1, (ind) {
        ind % 2 == 1 ? count += 1 : null;
        return ind % 2 == 0
            ? LetterKey(
                letterChar: thirdRowLetters[count],
                delay: Duration(milliseconds: (200 * count) + 1750),
              )
            : const SizedBox(
                width: 6,
              );
      }),
      const SizedBox(
        width: 6,
      ),
      const BackspaceKey(),
      const SizedBox(
        width: 10,
      ),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardKeys/LetterKey.dart';
import 'package:wordly/GuessScreen/LetterSection/LetterBlock.dart';

class FirstKeyboardRow extends StatelessWidget {
  final int numberOfKeys;
  const FirstKeyboardRow({required this.numberOfKeys, super.key});

  @override
  Widget build(BuildContext context) {
    const firstRowLetters = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"];
    int count = 0;
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        width: 10,
      ),
      ...List.generate(numberOfKeys + numberOfKeys - 1, (ind) {
        if (ind % 2 == 1) {
          count += 1;
        }
        return ind % 2 == 0
            ? LetterKey(
                letterChar: firstRowLetters[count],
                delay: Duration(milliseconds: (250 * count) + 500),
              )
            : const SizedBox(
                width: 6,
              );
      }),
      const SizedBox(
        width: 10,
      ),
    ]);
  }
}

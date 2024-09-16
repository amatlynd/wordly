import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardKeys/LetterKey.dart';
import 'package:wordly/GuessScreen/LetterSection/LetterBlock.dart';

class SecondKeyboardRow extends StatelessWidget {
  final int numberOfKeys;
  const SecondKeyboardRow({required this.numberOfKeys, super.key});

  @override
  Widget build(BuildContext context) {
    const secondRowLetters = ["A", "S", "D", "F", "G", "H", "J", "K", "L"];
    int count = 0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          width: 10,
        ),
        ...List.generate(numberOfKeys + numberOfKeys - 1, (ind) {
          ind % 2 == 1 ? count += 1 : null;
          return ind % 2 == 0
              ? LetterKey(
                  letterChar: secondRowLetters[count],
                  delay: Duration(milliseconds: (200 * count) + 1000),
                )
              : const SizedBox(
                  width: 6,
                );
        }),
        const SizedBox(
          width: 10,
        ),
      ]),
    );
  }
}

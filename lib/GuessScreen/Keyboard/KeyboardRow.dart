import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardKey.dart';
import 'package:wordly/GuessScreen/LetterSection/LetterBlock.dart';

class KeyboardRow extends StatelessWidget {
  final int numberOfKeys;
  const KeyboardRow({required this.numberOfKeys, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        width: 10,
      ),
      ...List.generate(numberOfKeys + numberOfKeys - 1, (ind) {
        return ind % 2 == 0
            ? KeyboardKey()
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

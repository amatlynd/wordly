import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/LetterSection/GuessSection/LetterBlock.dart';

class LetterRow extends StatelessWidget {
  const LetterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(9, (ind) {
        return ind % 2 == 0
            ? const LetterBlock(blockLetter: 'A')
            : const SizedBox(
                width: 5,
              );
      }),
    );
  }
}

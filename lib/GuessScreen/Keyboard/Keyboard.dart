import 'package:flutter/cupertino.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardRows/FirstKeyboardRow.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardRows/SecondKeyboardRow.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardRows/ThirdKeyboardRow.dart';

class Keyboard extends StatelessWidget {
  final String letter;
  const Keyboard({super.key, this.letter = ''});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: MediaQuery.sizeOf(context).height / 3,
      child: Column(
        children: [
          FirstKeyboardRow(
            numberOfKeys: 10,
          ),
          SizedBox(
            height: 6,
          ),
          SecondKeyboardRow(
            numberOfKeys: 9,
          ),
          SizedBox(
            height: 6,
          ),
          ThirdKeyboardRow(numberOfKeys: 7)
        ],
      ),
    ));
  }
}

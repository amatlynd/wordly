import 'package:flutter/cupertino.dart';
import 'package:wordly/GuessScreen/Keyboard/KeyboardRow.dart';

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
          KeyboardRow(
            numberOfKeys: 10,
          ),
          SizedBox(
            height: 6,
          ),
          KeyboardRow(
            numberOfKeys: 9,
          ),
          SizedBox(
            height: 6,
          ),
          KeyboardRow(
            numberOfKeys: 10,
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/Keyboard/Keyboard.dart';
import 'package:wordly/GuessScreen/LetterSection/LetterRow.dart';

class GuessScreen extends StatefulWidget {
  const GuessScreen({super.key});

  @override
  State<GuessScreen> createState() => _GuessScreenState();
}

class _GuessScreenState extends State<GuessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 80,
              ),
              ...List.generate(11, (ind) {
                return ind % 2 == 0
                    ? const LetterRow()
                    : const SizedBox(
                        height: 5,
                      );
              }),
              const SizedBox(
                height: 40,
              ),
              const Keyboard(),
            ],
          ),
        ),
      ),
    );
  }
}

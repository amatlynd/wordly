import 'package:flutter/material.dart';
import 'package:wordly/GuessScreen/LetterSection/GuessSection/LetterRow.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}

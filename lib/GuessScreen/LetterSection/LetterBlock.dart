import 'package:flutter/material.dart';

class LetterBlock extends StatelessWidget {
  final Color blockColor;
  final String blockLetter;
  const LetterBlock({
    super.key,
    this.blockColor = Colors.black,
    required this.blockLetter,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: blockColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        width: MediaQuery.sizeOf(context).width / 7,
        height: MediaQuery.sizeOf(context).width / 7,
        child: Center(
          child: Text(
            blockLetter,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
